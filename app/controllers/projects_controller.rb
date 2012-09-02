class ProjectsController < ApplicationController
  

  #before_filter :authenticate_user_or_admin! 


  
  #Lists projects
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  #shows 1 project
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  #Shows the summary page for 1 project
  def summary
    @project = Project.find(params[:id])
    procs=Array.new #empty array for the total number of procs for the project
    @totsize=0
    @totprice=0
    @totequip=(Basket.find_all_by_project_id(@project)).count #total equipment belonging to a project
    
    @project.baskets.each do |b|    
      if not procs.include?(b.procedurex_id) #if the procedure array does not include the basket's procedure
        procs.push(b.procedurex_id) #add the basket procedure_id to the array
      end
      if not b.equipment.price.nil? #if the basket equipment price is not nil
        @totprice=@totprice+(b.equipment.price*b.quantity) #add the price X quantity to the total price
      end
      if (not b.equipment.width.nil?) and (not b.equipment.depth.nil?) #if width and depth are not nil
        @totsize=@totsize+ (b.equipment.width*b.equipment.depth*b.quantity) #calculate surface area, multiply by quantity and add to total
      end    
    end
    
    @totprocs=procs.count #total procedures for this project
    
    #if you wish to display all the procedures for the project, use the array of ids in procs to access them
    
    @totprice=sprintf "%.02f", @totprice.round(2) #round to 2 decimal places for currency
      
    respond_to do |format|
      format.html # summary.html.erb
      format.json { render json: @project }
    end
  end
  
  #tab for adding and removing analyses and tests to a project
  def analyses
    @project = Project.find(params[:id])
    @analyses = Analysis.all

    respond_to do |format|
      format.html # analyses.html.erb
      format.json { render json: @project }
    end
  end
  
  #tab listing all the equipment for a project
  def equip
    @project = Project.find(params[:id])
    @totprice=0
    @totsize=0
    @project.baskets.each do |p|
      if not p.equipment.price.nil? #if the basket equipment price is not nil
        @totprice=@totprice+(p.equipment.price*p.quantity) #add to the running total
      end
      if (not p.equipment.width.nil?) and (not p.equipment.depth.nil?) #if width and depth are not nil
        @totsize=@totsize+ (p.equipment.width*p.equipment.depth*p.quantity) #calculate total surface area and add to the running total
      end
    end
    
    @totprice=@totprice.round(2)
    @totprice=sprintf "%.02f", @totprice #display total price in currency format to 2 dp
    
    respond_to do |format|
      format.html # equip.html.erb
      format.json { render json: @project }
  
    end
  end
  
  #page for selecting a procedure
  def select_procedure
    @project = Project.find(params[:id])
    @test = Testx.find(params[:test_id])
    respond_to do |format|
      format.html # select_procedure.html.erb
      format.json { render json: @project }
    end
  end
  
  #page for selecting equipment
  def  select_equipment
    @project = Project.find(params[:id])  
    @procedure = Procedurex.find(params[:proc_id])
    @ingreds =@procedure.ingredientss #this reduces code and potential spelling error
    
    #this was the best way I could find of identifying all the baskets already created for the ingredients of a procedure
    @rightbaskets=Array.new
    
    x=@ingreds.count #x is the number of ingredients - the total baskets necessary for this project
    @project.baskets.each do |b|
      if b.procedurex==@procedure then #if a extant basket belongs to the procedure
        x=x-1 #reduce number of new baskets to be created by 1
        @rightbaskets.push(b) #add basket to the array of current baskets
      end
    end
    
    x.times do |pl|
      basket=Basket.create(:procedurex_id =>:proc_id, :project_id =>:id) #create baskets where there are not extant ones for this procedure
      @rightbaskets.push(basket) #add the new basket to the array of current baskets
    end
    
    respond_to do |format|
      format.html # select_equipment.html.erb
      format.json { render json: @project }
    end
  end
  
  #creates baskets for a project
  def create_baskets
    @project = Project.find(params[:id])
    
    if @project.update_attributes(params[:project])
        redirect_to :action => 'equip'
    else
        format.html { render action: "select_equipment" }
    end   

  end
  
  #shows new project form
  def new
    @analyses= Analysis.all #may not be necessary
    @project = Project.new
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  #shows edit project form
  def edit
    @analyses=Analysis.all
    @project = Project.find(params[:id])
  end

  #creates a project
  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  #Used by edit project and analyses to update the attributes of a project
  def update
    params[:project][:analysis_ids]
    
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to :action => 'analyses', notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # Deletes a project
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
  
  #removes a test association from a project
  def delete_test
    @project = Project.find(params[:id])
    @testk= @project.testxes.find(params[:test_id])
    if @testk
      @project.testxes.delete(@testk)
    end
    redirect_to :action => 'analyses'
  end
  
  #removes an anlaysis association from a project
  def delete_ana
    @project = Project.find(params[:id])
    @an= @project.analyses.find(params[:ana_id])
    if @an
      @project.analyses.delete(@an)
    end
    redirect_to :action => 'analyses'
  end
  
  #deletes a basket
  def delete_basket
    @basket = Basket.find(params[:bask_id])
    @basket.destroy
    redirect_to :action =>'equip'
  end
  
end
