Rails.application.routes.draw do

  resources :categories
  resource :session


  resources :users


  get 'signup' => 'users#new'



  #Passing routes manually with scope parameter
  #get "events/past" => "events#index", scope: "past"
  #get "events/free" => "events#index", scope: "free"

  #Passing routes manually but with a block. Better.
  # ["past", "free"].each do |scope|
  #     get "events/#{scope}" => "events#index", scope: scope
  # end

  get "events/filter/:scope" => "events#index", as: :filtered_events
  get "/css" => 'events#css'

  root 'events#index'
  resources :events do
    resources :registrations
    resources :likes
  end



end
