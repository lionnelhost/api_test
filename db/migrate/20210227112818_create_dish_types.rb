class CreateDishTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :dish_types do |t|
      t.string :label
      t.integer :extra

      t.timestamps
    end
  end
end
