class AddHobbyToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :hobby, :text
  end
end
