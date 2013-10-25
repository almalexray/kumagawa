class ViewedsController < ApplicationController
  before_filter :login_required
  before_filter :role_required
  before_action :set_viewed, only: [:show, :edit, :update, :destroy]

  def index
    @vieweds = Viewed.all
  end

  def show
  end

  def new
    @viewed = Viewed.new
  end

  def edit
  end

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

  def destroy
    @viewed.destroy
    respond_to do |format|
      format.html { redirect_to vieweds_url }
      format.json { head :no_content }
    end
  end

  private
  def set_viewed
    @viewed = Viewed.find(params[:id])
  end

  def viewed_params
    params.require(:viewed).permit(:name)
  end
end
