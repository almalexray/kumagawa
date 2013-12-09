class UsersController < ApplicationController
  before_filter :login_required
  before_filter :role_required, except: [:show]
  before_action :set_user, only: [:show, :edit, :update]
  before_filter :owner_required, only: [:edit, :update]

  def index
    @users = User
    @users = User.order(params[:sort]) if params[:sort]
    @users = @users.all
  end

  def show
  end


  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_role
    @user = User.find params[:user_id]
    @role = Role.find params[:role_id]
    @user.update_attribute(:role, @role)
    redirect_to @user
  end

  private
    def set_user
      @user = User.find(params[:id])
      @owner_check_object = @user
    end

    def user_params
      params.require(:user).permit(:email, :role_id, :fio, :education, :birth, course_ids:[])
    end
end
