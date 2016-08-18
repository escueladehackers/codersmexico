class ProfilesController < ActionController::Base
  layout "application"


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    redirect_to edit_user_registration_path(id: params[:id])
  end


end
