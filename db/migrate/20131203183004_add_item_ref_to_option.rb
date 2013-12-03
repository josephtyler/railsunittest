class AddItemRefToOption < ActiveRecord::Migration
  def change
    add_column :options, :item_id, :integer
  end
end
