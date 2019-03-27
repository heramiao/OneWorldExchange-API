class AddTokenIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :token_id, :string
  end
end
