Ritly::Application.routes.draw do

  root "urls#index" 
  resources :urls#, only: [:create, :new, :show, :destroy] #only using create, new and show.
  get '/:some_totally_random_value', to: 'urls#redirectors', as: 'redirector'
  get '/:some_totally_random_value/preview', to: 'urls#preview', as: 'preview'
   
end
