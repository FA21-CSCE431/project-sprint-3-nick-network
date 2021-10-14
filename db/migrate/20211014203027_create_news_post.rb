class CreateNewsPost < ActiveRecord::Migration[6.1]
  def change
    create_table :news_posts do |t|
      t.integer :userID
      t.string :title
      t.string :description
      
      t.timestamps
    end
  end
end
