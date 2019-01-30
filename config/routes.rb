Rails.application.routes.draw do
  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  get '/testimonials', to: 'testimonials#index'

  root 'pages#home'
end
