class OutletControlsController < ApplicationController
  before_action :set_outlet_control, only: [:show, :edit, :update, :destroy]

  # GET /outlet_controls
  # GET /outlet_controls.json
  def index
    @outlet_controls = OutletControl.all
  end

  # GET /outlet_controls/1
  # GET /outlet_controls/1.json
  def show
  end

  # GET /outlet_controls/new
  def new
    @outlet_control = OutletControl.new
  end

  # GET /outlet_controls/1/edit
  def edit
  end

  # POST /outlet_controls
  # POST /outlet_controls.json
  def create
    @outlet_control = OutletControl.new(outlet_control_params)

    respond_to do |format|
      if @outlet_control.save
        format.html { redirect_to @outlet_control, notice: 'Outlet control was successfully created.' }
        format.json { render action: 'show', status: :created, location: @outlet_control }
      else
        format.html { render action: 'new' }
        format.json { render json: @outlet_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outlet_controls/1
  # PATCH/PUT /outlet_controls/1.json
  def update
    respond_to do |format|
      if @outlet_control.update(outlet_control_params)
        format.html { redirect_to @outlet_control, notice: 'Outlet control was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @outlet_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlet_controls/1
  # DELETE /outlet_controls/1.json
  def destroy
    @outlet_control.destroy
    respond_to do |format|
      format.html { redirect_to outlet_controls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outlet_control
      @outlet_control = OutletControl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outlet_control_params
      params.require(:outlet_control).permit(:name)
    end
end
