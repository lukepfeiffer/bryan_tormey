class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      sign_in(user)
      flash[:success] = "Signed in successfullly!"
      redirect_to images_path
    else
      flash[:danger] = "Email or password did not match!"
      redirect_to sign_in_path
    end
  end

  def destroy
    sign_out_user
    flash[:success] = "Signed out successfullly!"
    redirect_to root_path
  end

end
