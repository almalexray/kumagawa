class EducationsController < ApplicationController
  before_filter :login_required
  before_filter :role_required
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @education = Education.new
  end

  def edit
  end

  def create
    @education = Education.new(education_params)

    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: 'Education was successfully created.' }
        format.json { render action: 'show', status: :created, location: @education }
      else
        format.html { render action: 'new' }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url }
      format.json { head :no_content }
    end
  end

  private
  def set_education
    @education = Education.find(params[:id])
  end

  def education_params
    params.require(:education).permit(:name)
  end
end
