class PostsController < ApplicationController
    
    def new
      @post = Post.new
    end
    
    def create
      @post = Post.new(post_params)
      @post.save
      redirect_to article_path(params[:post]['article_id'])
      
    end
    
    def index
      @posts = Post.all
    end
    
    def edit
      @post = Post.find(params[:id])
    end
    
    private
    
    def post_params
      params.require(:post).permit(:body, :name, :article_id)
    end
    
end
