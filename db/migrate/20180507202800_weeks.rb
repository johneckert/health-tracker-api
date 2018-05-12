class Weeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.float :weight
      t.float :waist
      t.float :body_fat
      t.belongs_to :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
