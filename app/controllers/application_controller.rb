class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def is_following(follwer_id)
    following = false
    ids = current_user.followed_users.collect{|user| user.id}
    following = true if ids.include? follwer_id.to_i
  end


end
