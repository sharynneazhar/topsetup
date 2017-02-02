class CreateSetupImages < ActiveRecord::Migration[5.0]
  def change
    create_table :setup_images do |t|
      t.integer :setup_id
      t.string :image

      t.timestamps
    end
  end
end
