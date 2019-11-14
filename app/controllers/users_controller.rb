class UsersController < ApplicationController
  def new # action
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
end
