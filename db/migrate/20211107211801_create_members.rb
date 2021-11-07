class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :title
      t.string :description
      t.date :meeting_date
      t.string :location

      t.timestamps
    end
  end
end
