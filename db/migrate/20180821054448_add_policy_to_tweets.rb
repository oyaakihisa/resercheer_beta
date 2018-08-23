class AddPolicyToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :policy, :text
  end
end
