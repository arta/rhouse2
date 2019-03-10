Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'pages#index'

  get '/about',   to: 'pages#about'
  get '/admin',   to: 'admin/portfolios#index'
  get '/contact', to: 'pages#contact'

  get '/all-services',      to: 'services#index'
  get '/exterior-services', to: 'services#exterior_services'
  get '/interior-services', to: 'services#interior_services'
  get '/other-services',    to: 'services#other_services'
  get '/kitchens',          to: 'services#kitchens'
  get '/bathrooms',         to: 'services#bathrooms'
  get '/roofing',           to: 'services#roofing'
  get '/green-roofs',       to: 'services#green_roofs'
  get '/siding',            to: 'services#siding'
  get '/windows',           to: 'services#windows'
  get '/decks',             to: 'services#decks'
  get '/gutters',           to: 'services#gutters'
  get '/flooring',          to: 'services#flooring'
  get '/stone',             to: 'services#stone'
  get '/hail-damage',       to: 'services#hail_damage'
  get '/ice-dams',          to: 'services#ice_dams'
  get '/snow-removal',      to: 'services#snow_removal'
  get '/bat-removal',       to: 'services#bat_removal'

  get 'portfolios',         to: 'portfolios#index'
  get 'portfolios/admin',   to: 'admin/portfolios#index'
  get 'portfolios/kitchens'
  get 'portfolios/bathrooms'
  get 'portfolios/roofing'
  get 'portfolios/siding'
  get 'portfolios/windows'
  get 'portfolios/decks'
  get 'portfolios/flooring'

  get 'testimonials',       to: 'testimonials#index'
  get 'testimonials/admin', to: 'admin/testimonials#index'

  namespace :admin do
    resources :portfolios, :testimonials
    resources :images, only: :destroy
  end
end
