class PagesController < ApplicationController
  def home
    @posts = Blog.all
    render json: @posts
  end

  def about
  end

  def contact
  end
end
