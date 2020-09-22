Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
      resources :products do 
        resources :journal_entries
      end 
    end 
end
