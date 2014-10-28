Rails.application.routes.draw do

root 'drinks#index'

get '/occasion' => 'occasions#index'
post '/occasion' => 'seasons#index'
get '/season' => 'seasons#index'#, :as => 'season_path'
get '/flavor' => 'flavors#index'
post '/flavor' => 'flavors#index'
get '/search' => 'drinks#search'
get '/output' => 'drinks#output'



resources :drinks
resources :occasions
resources :seasons
resources :flavors



end
