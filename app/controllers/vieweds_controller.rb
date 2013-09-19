class ViewedsController < ApplicationController
  before_action :set_viewed, only: [:show, :edit, :update, :destroy]

  # GET /vieweds
  # GET /vieweds.json
  def index
    @vieweds = Viewed.all
  end

  # GET /vieweds/1
  # GET /vieweds/1.json
  def show
  end

  # GET /vieweds/new
  def new
    @viewed = Viewed.new
  end

  # GET /vieweds/1/edit
  def edit
  end

  # POST /vieweds
  # POST /vieweds.json
  def create
    @viewed = Viewed.new(viewed_params)

    respond_to do |format|
      if @viewed.save
        format.html { redirect_to @viewed, notice: 'Viewed was successfully created.' }
        format.json { render action: 'show', status: :created, location: @viewed }
      else
        format.html { render action: 'new' }
        format.json { render json: @viewed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vieweds/1
  # PATCH/PUT /vieweds/1.json
  def update
    respond_to do |format|
      if @viewed.update(viewed_params)
        format.html { redirect_to @viewed, notice: 'Viewed was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @viewed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vieweds/1
  # DELETE /vieweds/1.json
  def destroy
    @viewed.destroy
    respond_to do |format|
      format.html { redirect_to vieweds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewed
      @viewed = Viewed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewed_params
      params.require(:viewed).permit(:name)
    end
end
