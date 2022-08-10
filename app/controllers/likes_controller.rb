class LikesController < ApplicationController

    before_action :set_tweeet

  def like_toggle
    if already_like
      @like = tweeet.likes.find(params[:id])
      @like.destroy
      respond_to do |format| 
        format.html
        format.js
    end
    else
      @like = Like.create(tweeet_id: params[:tweeet_id] ,user_id: current_user.id)
      if  @like.save
        respond_to do |format|
       format.js
      end
      end
    end

  end


  private 
  def set_tweeet
    @tweeet = Tweeet.find(params[:tweeet_id])
  end
   def already_like
    Like.where(user_id:current_user.id,tweeet_id:params[:tweeet_id]).exists? 
  end

end