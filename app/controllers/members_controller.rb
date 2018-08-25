class MembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show]

  def index
    @members = User.all
  end
  def show
  end

  private
  def set_user
    @member = User.find(params[:id])
  end
end