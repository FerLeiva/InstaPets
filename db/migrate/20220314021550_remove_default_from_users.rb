class RemoveDefaultFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :default
  end
end
