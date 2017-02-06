class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.integer :setup_id
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
