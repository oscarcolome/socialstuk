class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:create]
  before_action :set_friendship, only: [:destroy, :accept]

  def create
    @friendship = current_user.request_friendship(@user)
    redirect_to users_path, notice: 'Friendship Created'
  end

  def destroy
    @friendship.destroy
    redirect_to users_path, notice: 'Friendship Deleted'
  end

  def accept
    @friendship.accept_friendship
    @friendship.create_activity(key: 'friendship.accepted', owner: @friendship.user, recipient: @friendship.friend)
    redirect_to users_path, notice: 'Friendship accepted'
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_friendship
    @friendship = Friendship.find(params[:id])
  end
end
