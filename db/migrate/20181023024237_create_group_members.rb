class CreateGroupMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :group_members do |t|
      t.references :travel_group, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
