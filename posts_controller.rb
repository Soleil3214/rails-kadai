class PostsController < ApplicationController
  # GET /posts/new
def new
end


=begin
  # POST /posts
def create
render text: params[:post].inspect
 end
#@post = Post.new(post_params)(params[:post])
=end

 # POST /posts
 def create
   @post = Post.new(post_params)
   @post.save
   redirect_to @post
 end

 private
   def post_params
     params.require(:post).permit(:title, :text)
   end

   # GET /posts/:id
   def show
     @post = current_user.posts.find(params[:id])
   end


 # GET /posts
 def index
   @posts = post.all
 end


end
