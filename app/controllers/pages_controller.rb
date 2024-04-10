class PagesController < ApplicationController
  def home
    @user = User.new
    if signed_in?
      @posts = Post.all.order(status: :desc, created_at: :desc)
    else
      @posts = Post.where(status: "published").order(created_at: :desc)
    end
  end
end
