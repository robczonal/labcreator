class ProcedurexesController < ApplicationController
  # GET /procedurexes
  # GET /procedurexes.json
  def index
    @procedurexes = Procedurex.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @procedurexes }
    end
  end

  # GET /procedurexes/1
  # GET /procedurexes/1.json
  def show
    @procedurex = Procedurex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @procedurex }
    end
  end

  # GET /procedurexes/new
  # GET /procedurexes/new.json
  def new
    @procedurex = Procedurex.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @procedurex }
    end
  end

  # GET /procedurexes/1/edit
  def edit
    @procedurex = Procedurex.find(params[:id])
  end

  # POST /procedurexes
  # POST /procedurexes.json
  def create
    @procedurex = Procedurex.new(params[:procedurex])

    respond_to do |format|
      if @procedurex.save
        format.html { redirect_to @procedurex, notice: 'Procedurex was successfully created.' }
        format.json { render json: @procedurex, status: :created, location: @procedurex }
      else
        format.html { render action: "new" }
        format.json { render json: @procedurex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /procedurexes/1
  # PUT /procedurexes/1.json
  def update
    @procedurex = Procedurex.find(params[:id])

    respond_to do |format|
      if @procedurex.update_attributes(params[:procedurex])
        format.html { redirect_to @procedurex, notice: 'Procedurex was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @procedurex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedurexes/1
  # DELETE /procedurexes/1.json
  def destroy
    @procedurex = Procedurex.find(params[:id])
    @procedurex.destroy

    respond_to do |format|
      format.html { redirect_to procedurexes_url }
      format.json { head :no_content }
    end
  end
end
