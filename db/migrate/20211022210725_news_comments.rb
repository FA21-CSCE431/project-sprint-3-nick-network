class NewsComments < ActiveRecord::Migration[6.1]
  def change
    create_table :news_comments do |t|
      t.integer :news_ID
      t.integer :comment_ID
      t.timestamps
    end
  end
end
