class AddCommentToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :comment, :text
  end
end
