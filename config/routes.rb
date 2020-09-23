Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
     resources :products, only: [:create, :show, :index, :update] do
      resources :journal_entries, only: [:create, :show, :index, :edit, :update, :destroy]
   end
  end  
 end 
 
end 
