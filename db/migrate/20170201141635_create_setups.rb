class CreateSetups < ActiveRecord::Migration[5.0]
  def change
    create_table :setups do |t|
      t.string :name
      t.string :description
      t.string :hero_image_id

      t.timestamps
    end
  end
end
