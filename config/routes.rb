Rails.application.routes.draw do
  
  get 'travellers/index'
  root to: "home#index" 
  
  get '/flight', to: "travellers#index"

  # get '/traveller', to: 
  get '/hotel', to: 'travellers#index'
  get '/packages', to: 'home#index', as: 'packages'
  get '/cabs', to: 'travellers#index', as: 'cabs'
  get '/trains', to: 'travellers#index', as: 'trains'


  resources :booking
end