Trucks::Application.routes.draw do
  
  get "rentable" => "rentable#index"
  get "iphone" => "welcome#iphone"
  
  get "index" => "welcome#index"
  
  root :to => "welcome#index"
  
  # keep last
  match "/rentable/:category(/:rent_group)(/:branch_number)" => "rentable#category", :as => :category_lookup

end
