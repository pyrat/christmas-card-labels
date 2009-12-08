ActionController::Routing::Routes.draw do |map|
  map.resources :addresses
  map.resources :labels
  map.root :controller => 'addresses'
end
