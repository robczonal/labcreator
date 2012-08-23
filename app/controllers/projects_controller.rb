class ProjectsController < ApplicationController
  
  before_filter :authenticate_user_or_admin! 

  def find_user_name
     if admin_signed_in? 
        return admin.current_admin
	admin_session
     elsif user_signed_in?
        return user.current_user
	user_session
     end
  end
  
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  def summary
    @project = Project.find(params[:id])
    procs=Array.new
    @totsize=0
    @totprice=0
    @totequip=(Basket.find_all_by_project_id(@project)).count
    
    @project.baskets.each do |b|    
      if not procs.include?(b.procedurex_id)
        procs.push(b.procedurex_id)
      end
      if not b.equipment.price.nil?
        @totprice=@totprice+(b.equipment.price*b.quantity)
      end
      if (not b.equipment.width.nil?) and (not b.equipment.depth.nil?)
        @totsize=@totsize+ (b.equipment.width*b.equipment.depth*b.quantity)
      end    
    end
    
    @totprocs=procs.count
    @totprice=sprintf "%.02f", @totprice.round(2)
      
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
  
  def analyses
    @project = Project.find(params[:id])
    @analyses = Analysis.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
    
  def equip
    @project = Project.find(params[:id])
    @totprice=0
    @totsize=0
    @project.baskets.each do |p|
      if not p.equipment.price.nil?
        @totprice=@totprice+(p.equipment.price*p.quantity)
      end
      if (not p.equipment.width.nil?) and (not p.equipment.depth.nil?)
        @totsize=@totsize+ (p.equipment.width*p.equipment.depth*p.quantity)
      end
    end
    @totprice=@totprice.round(2)
    @totprice=sprintf "%.02f", @totprice
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
  
    end
  end
  
  def select_procedure
    @project = Project.find(params[:id])
    @test = Testx.find(params[:test_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
  
  def  select_equipment
    @project = Project.find(params[:id])  
    @procedure = Procedurex.find(params[:proc_id])
    @ingreds =@procedure.ingredientss
    @rightbaskets=Array.new
    x=@ingreds.count
    @project.baskets.each do |b|
      if b.procedurex==@procedure then
        x=x-1
        @rightbaskets.push(b)
      end
    end
    
    x.times do |pl|
      basket=Basket.create(:procedurex_id =>:proc_id, :project_id =>:id)
      @rightbaskets.push(basket)
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end
  
  def create_baskets
    @project = Project.find(params[:id])
    
    if @project.update_attributes(params[:project])
        redirect_to :action => 'equip'
    else
        format.html { render action: "select_equipment" }
    end   

  end
  
  
  
  # GET /projects/new
  # GET /projects/new.json
  def new
    @analyses= Analysis.all
    @project = Project.new
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @analyses=Analysis.all
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
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

  # PUT /projects/1
  # PUT /projects/1.json
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

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
  
  def delete_test
    @project = Project.find(params[:id])
    @testk= @project.testxes.find(params[:test_id])
    if @testk
      @project.testxes.delete(@testk)
    end
    redirect_to :action => 'analyses'
  end
  
  def delete_ana
    @project = Project.find(params[:id])
    @an= @project.analyses.find(params[:ana_id])
    if @an
      @project.analyses.delete(@an)
    end
    redirect_to :action => 'analyses'
  end
  
  def delete_basket
    @basket = Basket.find(params[:bask_id])
    @basket.destroy
    redirect_to :action =>'equip'
  end
  
end
