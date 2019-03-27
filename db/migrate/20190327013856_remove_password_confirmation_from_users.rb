class RemovePasswordConfirmationFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :password_confirmation, :string
  end
end
