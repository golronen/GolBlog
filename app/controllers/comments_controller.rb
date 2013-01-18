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
    
    #redirect_to @post
    respond_to do |format|  
      #format.html { redirect_to(posts_url) } 
      format.html { redirect_to(@post) }
      format.js   { render :layout => false }
      format.json { head :no_content }
    end
  end
end
