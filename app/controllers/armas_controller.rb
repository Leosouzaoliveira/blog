class ArmasController < ApplicationController
  # GET /armas
  # GET /armas.json
  def index
 if params[:tag]
    @armas = Arma.tagged_with(params[:tag])
  else
    @armas = Arma.all
  end
  end

  # GET /armas/1
  # GET /armas/1.json
  def show
    @arma = Arma.find(params[:id])

  end

  # GET /armas/new
  # GET /armas/new.json
  def new
    @arma = Arma.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arma }
    end
  end

  # GET /armas/1/edit
  def edit
    @arma = Arma.find(params[:id])
  end

  # POST /armas
  # POST /armas.json
  def create
    @arma = Arma.new(params[:arma])

    respond_to do |format|
      if @arma.save
        format.html { redirect_to @arma, notice: 'Arma was successfully created.' }
        format.json { render json: @arma, status: :created, location: @arma }
      else
        format.html { render action: "new" }
        format.json { render json: @arma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /armas/1
  # PUT /armas/1.json
  def update
    @arma = Arma.find(params[:id])

    respond_to do |format|
      if @arma.update_attributes(params[:arma])
        format.html { redirect_to @arma, notice: 'Arma was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armas/1
  # DELETE /armas/1.json
  def destroy
    @arma = Arma.find(params[:id])
    @arma.destroy

    respond_to do |format|
      format.html { redirect_to armas_url }
      format.json { head :no_content }
    end
  end
end
