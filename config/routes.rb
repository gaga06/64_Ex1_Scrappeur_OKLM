Rails.application.routes.draw do
  root to: 'home#index', as: :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
post '/', to: "home#index", as: 'value'

end
