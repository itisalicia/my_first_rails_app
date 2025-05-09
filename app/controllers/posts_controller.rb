class PostsController < ApplicationController
 def index
   @posts = Post.all
 end

 def new
   @post = Post.new
 end

 def create
   if @post.save
     redirect_to_post_path(@post.id)
   else
    render :new, status: :unprocessable_entity
   end
 end
end
