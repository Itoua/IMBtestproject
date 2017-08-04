class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
  	params.require(:user).permit(:name, :surname, :email, :mobile_number, :password, :password_confirmation)
  end

end