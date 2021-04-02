class PostsController < ApplicationController
    
    def new
      @post = Post.new
    end
    
    def create
      @post = Post.new(post_params)
      redirect_to posts_path
    end
    
    def index
      @posts = Post.all
    end
    
    def edit
      @post = Post.find(params[:id])
    end
    
    def
    
    private
    
    def post_params
      params.require(:post).permit(:body)
    end
    
end
