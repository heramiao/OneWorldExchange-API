Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :user
  resources :travelgroup
  resources :trip
  resources :split
  resources :transaction
  resources :groupmember

  # more specific group member routes
  get 'groupmember/travelgroup/:id' => 'groupmember#travelGroupMembers', :as => :travelGroupMembers

end
