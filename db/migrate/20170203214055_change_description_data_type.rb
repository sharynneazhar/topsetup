class ChangeDescriptionDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :setups, :description, :text
  end
end
