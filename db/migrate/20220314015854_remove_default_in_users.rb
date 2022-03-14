class RemoveDefaultInUsers < ActiveRecord::Migration[7.0]
 def change
        change_column :users, :name, :name, default: ''

      remove_column :users :default
  end
end