# Put your extension routes here.

map.resources :products, :member => { :tell_a_friend => :get, :mail_to_friend => :put }

map.email_to_friend "/email_to_friend/:type/:id", :controller => 'email_sender', :action => 'send_mail'

map.namespace :admin do |admin|
  admin.resource :captcha_settings
end
