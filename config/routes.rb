Rails.application.routes.draw do

  root 'welcome#home'
  namespace :api do 
    namespace :v1 do
     resources :products do
      resources :journal_entries
   end
  end  
 end 
 
end 
