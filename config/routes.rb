Rails.application.routes.draw do
  resources :users

   get 'users/index'
 
  root 'users#index'
 
 	resources :twilio do
	  collection do
	    post 'reply'
	  end
 	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
