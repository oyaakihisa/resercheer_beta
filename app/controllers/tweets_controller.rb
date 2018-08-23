class TweetsController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]
    
  def index
    @lucky_resercher = Tweet.find(2)    #日毎にランダムに選ぶべき　<!--       自分        -->
    @tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end
  
  def new
  end

  def create
    Tweet.create(image: tweet_params[:image], birthday: tweet_params[:birthday], policy: tweet_params[:policy], hobby: tweet_params[:hobby], text: tweet_params[:text], comment: tweet_params[:comment], user_id: current_user.id)
  end  
   
  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end   
  
  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
    end
  end
  
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
    
  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments.includes(:user)
    @adds = @tweet.adds    # .includes(:user)
    @cheers = @tweet.cheers.includes(:user)
  end  
    
  private
  def tweet_params
    params.permit(:image, :birthday, :policy, :hobby, :text, :comment)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
