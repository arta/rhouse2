Rails.application.routes.draw do
  root 'pages#index'

  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  get '/services',  to: 'services#index'
  get '/exterior',  to: 'services#exterior'
  get '/interior',  to: 'services#interior'
  get '/mend',      to: 'services#mend'
  get '/kitchens',  to: 'services#kitchens'
  get '/bathrooms', to: 'services#bathrooms'
  get '/roofing',   to: 'services#roofing'
  get '/green',     to: 'services#green'
  get '/siding',    to: 'services#siding'
  get '/windows',   to: 'services#windows'
  get '/decks',     to: 'services#decks'
  get '/gutters',   to: 'services#gutters'
  get '/flooring',  to: 'services#flooring'
  get '/stone',     to: 'services#stone'
  get '/hail',      to: 'services#hail'
  get '/ice',       to: 'services#ice'
  get '/snow',      to: 'services#snow'
  get '/bats',      to: 'services#bats'

  get 'portfolios', to: 'portfolios#index'
  get 'portfolios/kitchens'
  get 'portfolios/bathrooms'
  get 'portfolios/roofing'
  get 'portfolios/siding'
  get 'portfolios/windows'
  get 'portfolios/decks'
  get 'portfolios/flooring'

  get 'testimonials', to: 'testimonials#index'

  namespace :admin do
    resources :portfolios, :testimonials
    resources :images, only: :destroy
  end
end
