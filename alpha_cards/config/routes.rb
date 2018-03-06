# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'alphacards', :to => 'alphacards#index'
post 'post/alphacards/updateposition', :to => 'alphacards#updateposition'
post 'post/alphacards/updatedata', :to => 'alphacards#updatedata'