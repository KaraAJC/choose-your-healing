class CreateOrderSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :order_selections do |t|
      t.belongs_to :order
      t.belongs_to :choice
      t.timestamps
    end
  end
end
