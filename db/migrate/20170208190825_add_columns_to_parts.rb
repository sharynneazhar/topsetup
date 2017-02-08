class AddColumnsToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :category_id, :string
  end
end
