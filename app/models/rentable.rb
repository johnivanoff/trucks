class Rentable < ActiveRecord::Base
  set_table_name "available_rental_truck_view"
  
  def self.how_many(a,b,c)
    Rentable.find_all_by_category_and_rent_group_and_branch_number(a,b,c).size
  end
  
end
