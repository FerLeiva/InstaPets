class AddDefaultNameToUser < ActiveRecord::Migration[7.0]
  def change
    delete_column :users, :default, :string
  end
  def change
    rename_column :users, :name,              null: false, default: ""
  end
end
