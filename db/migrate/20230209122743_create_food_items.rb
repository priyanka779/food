class CreateFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :food_items do |t|
      t.belongs_to :food
      t.belongs_to :cart
      
      t.timestamps
    end
  end
end
