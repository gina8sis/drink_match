Rails.application.routes.draw do

root 'drinks#index'

get '/occasion' => 'occasions#index'
get '/season' => 'seasons#index'
get '/flavor' => 'flavors#index'



resources :drinks
resources :occasions
resources :seasons
resources :flavors



end
