class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    @comment.save
    
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    #@comment = @post.comments.find(params[:comment_id])
    @comment.destroy
    
    redirect_to @post
  end
end
