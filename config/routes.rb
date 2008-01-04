Rails.application.routes.draw do
  get '/visits/soon' => 'visits#soon'
  resources :documents
  resources :companies
  resources :visits
  resources :comments
  resources :visit_types
  resources :frecuencies
  resources :industry_types
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
