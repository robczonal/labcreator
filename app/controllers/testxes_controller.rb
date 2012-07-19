class TestxesController < ApplicationController

   before_filter :authenticate_admin!, :only => [:new]
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

# GET /testxes
  # GET /testxes.json
  def index
    @testxes = Testx.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testxes }
    end
  end

  # GET /testxes/1
  # GET /testxes/1.json
  def show
    @testx = Testx.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testx }
    end
  end

  # GET /testxes/new
  # GET /testxes/new.json
  def new
    @testx = Testx.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testx }
    end
  end

  # GET /testxes/1/edit
  def edit
    @testx = Testx.find(params[:id])
  end

  # POST /testxes
  # POST /testxes.json
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

  # PUT /testxes/1
  # PUT /testxes/1.json
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

  # DELETE /testxes/1
  # DELETE /testxes/1.json
  def destroy
    @testx = Testx.find(params[:id])
    @testx.destroy

    respond_to do |format|
      format.html { redirect_to testxes_url }
      format.json { head :no_content }
    end
  end
end
