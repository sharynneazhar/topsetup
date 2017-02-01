class AddUserRefToSetups < ActiveRecord::Migration[5.0]
  def change
    add_reference :setups, :user, foreign_key: true
  end
end
