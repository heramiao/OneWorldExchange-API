Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, constraints: {id: /\d+.*+/}
  # example tokenID: 492100.faef903
  # when reading url parameter, stops at period so thinks that parameter is only digits
  # need constraints that can identify dot but don't allow it 
  resources :travel_groups
  resources :trips
  resources :splits
  resources :transactions
  resources :group_members

  # more specific group member routes
  get 'travel_groups/:id/members' => 'travel_groups#members', :as => :members

  # get all user token ids
  get 'users/:token_id' => 'users#tokenID', :as => :tokenID, constraints: {token_id: /[^\/]+/}

end
