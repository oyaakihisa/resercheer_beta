class AddsController < ApplicationController
  def create
    @add = Add.create(text: add_params[:text], tweet_id: add_params[:tweet_id])
    redirect_to "/tweets/#{@add.tweet.id}"   
  end

  private
  def add_params
    params.permit(:text, :tweet_id)
  end

end
