class AddBirthdayToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :birthday, :text
  end
end
