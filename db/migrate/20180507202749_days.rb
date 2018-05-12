class Days < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.integer :hunger
      t.integer :cravings
      t.integer :satiety
      t.integer :energy_level
      t.integer :well_being
      t.integer :processed_carbs
      t.boolean :stress_reduction_am
      t.boolean :stress_reduction_pm
      t.boolean :after_meal_walk_am
      t.boolean :after_meal_walk_pm
      t.text :joyful_movement
      t.text :presleep_routine
      t.belongs_to :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
