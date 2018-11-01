Rails.application.routes.draw do
  resources:static_pages
  resources:show
  resources:registration
  resources:user
  get '/user/static_pages/new/:id', to: 'static_pages#new'
end
