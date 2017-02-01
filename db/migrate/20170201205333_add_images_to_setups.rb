class AddImagesToSetups < ActiveRecord::Migration[5.0]
  def change
    add_column :setups, :images, :json
  end
end
