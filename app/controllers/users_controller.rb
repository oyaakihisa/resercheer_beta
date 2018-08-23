class UsersController < ApplicationController
  def show

    @nickname = current_user.nickname
    #    @cheering_resercher = 
    
    
    @cheers = current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
    

  end 
end