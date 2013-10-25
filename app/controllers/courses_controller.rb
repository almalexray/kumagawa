class CoursesController < ApplicationController
  before_filter :login_required, except: [:search, :index, :show]
  before_filter :role_required, except: [:search, :index, :show, :my]
  before_action :set_course, only: [:edit, :update, :destroy]
  before_filter :owner_required, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def my
    @courses = current_user.courses
  end

  def stats
    @courses = Course.order("hours DESC")
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  def search
    @courses = Course.search(params)
  end

  private
  def set_course
    @course = Course.find(params[:id])
    @owner_check_object = @course
  end

  def course_params
    params.require(:course).permit(:name, :typed, :view, :start_date, :end_date, :period, :hours, :based, :subjects, :outlet_control, :certificate, :cost, user_ids: [])
  end
end
