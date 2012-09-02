class EquipcatsController < ApplicationController

    #This controller can be used instead of the rails admin gem to allow the administrator to update the database
   #It is used for when the administrator chooses to 'show in application' from the rails_admin gem.

     #Admins can change, destory  and add, users can view but not change, unauthorised persons may not view
   before_filter :authenticate_admin!, :only => [:new, :edit, :destroy]
  before_filter :authenticate_user_or_admin! 



# GET /equipcats
  # GET /equipcats.json
  def index
    @equipcats = Equipcat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipcats }
    end
  end

  # GET /equipcats/1
  # GET /equipcats/1.json
  def show
    @equipcat = Equipcat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipcat }
    end
  end

  # GET /equipcats/new
  # GET /equipcats/new.json
  def new
    @equipcat = Equipcat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipcat }
    end
  end

  # GET /equipcats/1/edit
  def edit
    @equipcat = Equipcat.find(params[:id])
  end

  # POST /equipcats
  # POST /equipcats.json
  def create
    @equipcat = Equipcat.new(params[:equipcat])

    respond_to do |format|
      if @equipcat.save
        format.html { redirect_to @equipcat, notice: 'Equipcat was successfully created.' }
        format.json { render json: @equipcat, status: :created, location: @equipcat }
      else
        format.html { render action: "new" }
        format.json { render json: @equipcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipcats/1
  # PUT /equipcats/1.json
  def update
    @equipcat = Equipcat.find(params[:id])

    respond_to do |format|
      if @equipcat.update_attributes(params[:equipcat])
        format.html { redirect_to @equipcat, notice: 'Equipcat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipcat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipcats/1
  # DELETE /equipcats/1.json
  def destroy
    @equipcat = Equipcat.find(params[:id])
    @equipcat.destroy

    respond_to do |format|
      format.html { redirect_to equipcats_url }
      format.json { head :no_content }
    end
  end
end
