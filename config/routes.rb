Rails.application.routes.draw do

root 'drinks#index'

get '/occasion' => 'occasions#index'
post '/occasion' => 'drinks#first_screen'#, :as => 'season_path'

get '/season' => 'seasons#index'
post '/<seaso></seaso>n' => 'drinks#second_screen'

get '/flavor' => 'flavors#index'
post '/flavor' => 'drinks#third_screen'

get '/output' => 'drinks#output'
post '/output' => 'drinks#output'



get '/search' => 'drinks#search'

get '/show' => 'drinks#show'



resources :drinks
resources :occasions
resources :seasons
resources :flavors



end
