class RetweetsController < ApplicationController
  before_action :set_post

  def create
    @post.increment! :retweets
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
