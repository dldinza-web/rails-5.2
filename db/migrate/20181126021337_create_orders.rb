class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string  :token,           null: false, index: true
      t.references :customer,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
