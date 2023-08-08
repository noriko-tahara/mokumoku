class RelationshipsController < ApplicationController
  before_action :require_login
  before_action :set_other_user

  def create
    current_user.follow(@other_user)
    redirect_to request.referer
  end

  def destroy
    current_user.unfollow(@other_user)
    redirect_to request.referer
  end

  private

  def set_other_user
    @other_user = User.find(params[:user_id])
  end
end
