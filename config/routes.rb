Rails.application.routes.draw do
  resources :users

   get 'users/index'
 
  root 'users#index'

post '/recieve_sms' do
  content_type 'text/xml'

  response = Twilio::TwiMl::Response.new do |r|
    r.Message 'FLAPJACKS MOFO'
  end
  return response.to_xml
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
