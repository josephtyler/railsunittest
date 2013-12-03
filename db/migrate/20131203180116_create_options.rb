class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :price_in_cents
      t.integer :item_id

      t.timestamps
    end
  end
end
