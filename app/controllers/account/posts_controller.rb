class Account::PostsController < ApplicationController
    before_action :authenticate_user!
    def index
        @posts = current_user.posts
    end

    def edit
        @post = current_user.post.find(params[:id])
    end

    def destroy
        @post = current_user.post.find(params[:id])
        @post.destory
        redirect_to account_posts_path
    end
end
