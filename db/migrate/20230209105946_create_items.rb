class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.belongs_to :categaries
      t.belongs_to :restaurant
      
      t.timestamps
    end
  end
end
