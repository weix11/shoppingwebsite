class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :tele
      t.datetime :time
      t.float :total

      t.timestamps
    end
  end
end
