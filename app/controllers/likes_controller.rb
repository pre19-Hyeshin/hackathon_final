class LikesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    like = Like.find_by(Post_id: params[:Post_id], user_id: current_user.id)    
    
    if like.present?
      like.destroy
    else
      Like.create(Post_id: params[:post_id], user_id: current_user.id)
    end  
    
    redirect_back(fallback_location: root_path)
  end
end
