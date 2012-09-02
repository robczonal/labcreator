class TestxesController < ApplicationController
   #This controller can be used instead of the rails admin gem to allow the administrator to update the database
   #It is used for when the administrator chooses to 'show in application' from the rails_admin gem.


   #Users can view but not change testxes
  before_filter :authenticate_admin!, :only => [:new, :edit, :destroy]
  #Only authorised persons may view
  before_filter :authenticate_user_or_admin! 



   #Lists all testxes
  def index
    @testxes = Testx.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testxes }
    end
  end

  #Shows 1 testx  
  def show
    @testx = Testx.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testx }
    end
  end

  # Instigates form for new testx
  def new
    @testx = Testx.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testx }
    end
  end

  # Instigates form for extant testx
  def edit
    @testx = Testx.find(params[:id])
  end

  # Saves new testx created by new
  def create
    @testx = Testx.new(params[:testx])

    respond_to do |format|
      if @testx.save
        format.html { redirect_to @testx, notice: 'Testx was successfully created.' }
        format.json { render json: @testx, status: :created, location: @testx }
      else
        format.html { render action: "new" }
        format.json { render json: @testx.errors, status: :unprocessable_entity }
      end
    end
  end

  #Updates testx from edit
  def update
    @testx = Testx.find(params[:id])

    respond_to do |format|
      if @testx.update_attributes(params[:testx])
        format.html { redirect_to @testx, notice: 'Testx was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testx.errors, status: :unprocessable_entity }
      end
    end
  end

  #Deletes a testx from the database
  def destroy
    @testx = Testx.find(params[:id])
    @testx.destroy

    respond_to do |format|
      format.html { redirect_to testxes_url }
      format.json { head :no_content }
    end
  end
end
