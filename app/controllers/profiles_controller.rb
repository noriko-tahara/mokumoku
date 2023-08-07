class ProfilesController < ApplicationController
  before_action :require_login
  
  def show
    @user = User.find_by(name: params[:id])
  end
end
