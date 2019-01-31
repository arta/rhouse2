Rails.application.routes.draw do
  root 'pages#index'

  get '/about',   to: 'pages#about'
  get '/contact', to: 'pages#contact'

  get '/services',  to: 'services#index'
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

  get '/testimonials', to: 'testimonials#index'
end
