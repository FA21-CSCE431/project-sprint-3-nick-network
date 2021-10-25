class Comments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :description
      t.string :userID
      t.timestamps
    end
  end
end
