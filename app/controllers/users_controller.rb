class UsersController < ApplicationController
  before_action :authenticate_user!

  def follow
    r = Relationship.new
    is_follow = is_following(params[:follow_id].to_i)
    if is_follow == true
      flash[:notice] = "Already following"
    else
     r.followed_id = params[:follow_id]
     r.follower_id = current_user.id
     r.save!
    end
    redirect_to tweets_path
  end

end
