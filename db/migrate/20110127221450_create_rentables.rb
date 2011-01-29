class CreateRentables < ActiveRecord::Migration
  def self.up
    create_table :available_rental_truck_view, :id => false do |t|
      t.string :unit_number
      t.string :category
      t.string :rent_group
      t.string :make
      t.string :model
      t.string :branch_number
      t.string :rent_type
      t.string :rent_status
      t.string :year_made
      t.string :branch_name
      t.string :branch_phone
    end
  end

  def self.down
    drop_table :available_rental_truck_view
  end
end
