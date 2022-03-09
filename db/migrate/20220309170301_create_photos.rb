class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url
      t.text :description
      t.integer :license

      t.timestamps
    end
  end
end
