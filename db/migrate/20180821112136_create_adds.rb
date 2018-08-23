class CreateAdds < ActiveRecord::Migration
  def change
    create_table :adds do |t|
      t.integer    :tweet_id
      t.text       :text
      t.integer    :user_id
      t.timestamps 
    end
  end
end
