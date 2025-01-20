class ChangeRoleInUsersToText < ActiveRecord::Migration[8.0]
  def change
    change_column :users, :role, :text
  end
end