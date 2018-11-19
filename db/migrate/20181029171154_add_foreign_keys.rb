class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :travel_group, foreign_key: true
    add_reference :trips, :transaction, foreign_key: true
  end
end
