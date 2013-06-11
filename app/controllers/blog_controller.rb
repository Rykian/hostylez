class BlogController < ApplicationController
  def index
    @posts = Post.where(draft: false).order('id DESC')
  end

  def show
    @post = Post.where(slug: params[:slug]).first
  end
end
