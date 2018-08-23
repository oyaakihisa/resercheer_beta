class CreateCheers < ActiveRecord::Migration
  def change
    create_table :cheers do |t|
      t.integer     :user_id
      t.integer     :tweet_id
      t.integer     :cheer_time
      t.integer     :cheer_money
      t.timestamps 
    end
  end
end
