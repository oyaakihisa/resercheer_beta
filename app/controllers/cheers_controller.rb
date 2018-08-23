class CheersController < ApplicationController
  
  def new
    @tweet = Tweet.find(params[:tweet_id])
  end
  

  
  def create
    Cheer.create(tweet_id: cheer_params[:tweet_id], cheer_time: cheer_params[:cheer_time], cheer_money: cheer_params[:cheer_money], updated_at: cheer_params[:updated_at], user_id: current_user.id)
  end

  private
  def cheer_params
    params.permit(:tweet_id, :cheer_time, :cheer_money, :updated_at)
  end
end
