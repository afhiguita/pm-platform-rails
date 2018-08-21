class VisitorsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome, you session is starting"
      redirect_to user_path(user)
    else
      flash.now[:danger] = "The credential entered are wrong, please try again."
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You are logout"
    redirect_to root_path
  end
end
