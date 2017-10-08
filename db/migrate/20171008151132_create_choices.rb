class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.string :title, null: false
      t.integer :cost, default: 0
      t.timestamps
    end
  end
end
