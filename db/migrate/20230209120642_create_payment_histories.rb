class CreatePaymentHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_histories do |t|
      t.belongs_to :payment

      t.timestamps
    end
  end
end
