class LikesController < ApplicationController

  def create
    @like = current_user.likes.new(like_params)
    if @like.save?
      redirect @like.post_id
    else
      flash[:alert] = "There is Problem with likes"
      end

  end


  def destroy
    @like = current_user.likes.find(params[:id])
    post = @like.post
    @like.destroy

    redirect_to post
  end


  private 

  def like_params
    params.require(:like).permit(:post_id)
  end

end