class CreateCategaries < ActiveRecord::Migration[6.1]
  def change
    create_table :categaries do |t|
      t.string :itemcategary

      t.timestamps
    end
  end
end
