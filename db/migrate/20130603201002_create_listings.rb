class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.text :description
      t.integer :rent

      t.timestamps
    end
  end
end
