class RegistrationsController < Devise::RegistrationsController
  def index
    @users = User.where('is_agent = true')
  end

  def show
    set_user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def sign_up_params
    params.require(:user).permit(:name, :phone, :address, :is_agent, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :phone, :address, :is_agent, :email, :password, :password_confirmation, :current_password)
  end
end
