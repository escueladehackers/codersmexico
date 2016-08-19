class ProfilesController < ActionController::Base
  layout "application"

  # GET /profiles/
  def index
    @users = User.all
  end

  # GET    /profiles/:id
  def show
    @user = User.find(params[:id])
  end

  # GET /profiles/:id/edit
  def edit
    redirect_to edit_user_registration_path(id: params[:id])
  end


end
