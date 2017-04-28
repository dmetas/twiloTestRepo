Rails.application.routes.draw do
  resources :users

   get 'users/index'
 
  root 'users#index'

  post 'twilio/sms' => 'twilio#sms'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
