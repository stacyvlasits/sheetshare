class GearsController < ApplicationController
  # GET /gears
  # GET /gears.json
  def index
    @gears = Gear.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gears }
    end
  end

  # GET /gears/1
  # GET /gears/1.json
  def show
    @gear = Gear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gear }
    end
  end

  # GET /gears/new
  # GET /gears/new.json
  def new
    @gear = Gear.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gear }
    end
  end

  # GET /gears/1/edit
  def edit
    @gear = Gear.find(params[:id])
  end

  # POST /gears
  # POST /gears.json
  def create
    @gear = Gear.new(params[:gear])

    respond_to do |format|
      if @gear.save
        format.html { redirect_to @gear, notice: 'Gear was successfully created.' }
        format.json { render json: @gear, status: :created, location: @gear }
      else
        format.html { render action: "new" }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gears/1
  # PUT /gears/1.json
  def update
    @gear = Gear.find(params[:id])

    respond_to do |format|
      if @gear.update_attributes(params[:gear])
        format.html { redirect_to @gear, notice: 'Gear was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gears/1
  # DELETE /gears/1.json
  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy

    respond_to do |format|
      format.html { redirect_to gears_url }
      format.json { head :no_content }
    end
  end
end
