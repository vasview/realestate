class CreateRealEstates < ActiveRecord::Migration[7.0]
  def change
    create_table :real_estates do |t|
      t.string :title
      t.integer :real_estate_type
      t.references :city, foreign_key: true
      t.string :address
      t.integer :number_of_rooms
      t.integer :number_of_levels
      t.integer :property_level
      t.decimal :requested_price, precision: 18, scale: 2
      t.integer :wall_material
      t.string :description
      t.boolean :personal_data_processing

      t.timestamps
    end
  end
end
