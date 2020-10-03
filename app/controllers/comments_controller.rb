class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    # comment.user = User.find_or_create_by(username: params[:comment][:user][:username])
    redirect_to comment.post
  end

    # def update
    #   comment= Comment.find_by(id: params[:id])
    #   comment.update(comment_params)
    #   redirect_to post_path(comment.post)
    # end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
