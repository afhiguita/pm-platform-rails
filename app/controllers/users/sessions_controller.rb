# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  before_action :configure_sign_out_params, only: [:destroy]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    puts 'Destroy actions started:::'
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_out_params
    devise_parameter_sanitizer.permit(:sign_out, keys: [:attribute])
  end
end
