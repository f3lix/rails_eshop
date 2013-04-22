class GrouponsController < ApplicationController
  layout 'starter'
  # GET /groupons
  # GET /groupons.json
  def index
    @groupons = Groupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groupons }
    end
  end

  # GET /groupons/1
  # GET /groupons/1.json
  def show
    @groupon = Groupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @groupon }
    end
  end

  # GET /groupons/new
  # GET /groupons/new.json
  def new
    @groupon = Groupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @groupon }
    end
  end

  # GET /groupons/1/edit
  def edit
    @groupon = Groupon.find(params[:id])
  end

  # POST /groupons
  # POST /groupons.json
  def create
    @groupon = Groupon.new(params[:groupon])

    respond_to do |format|
      if @groupon.save
        format.html { redirect_to @groupon, notice: 'Groupon was successfully created.' }
        format.json { render json: @groupon, status: :created, location: @groupon }
      else
        format.html { render action: "new" }
        format.json { render json: @groupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /groupons/1
  # PUT /groupons/1.json
  def update
    @groupon = Groupon.find(params[:id])

    respond_to do |format|
      if @groupon.update_attributes(params[:groupon])
        format.html { redirect_to @groupon, notice: 'Groupon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @groupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupons/1
  # DELETE /groupons/1.json
  def destroy
    @groupon = Groupon.find(params[:id])
    @groupon.destroy

    respond_to do |format|
      format.html { redirect_to groupons_url }
      format.json { head :no_content }
    end
  end
end
