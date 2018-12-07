Rails.application.routes.draw do
  namespace :api do
    get 'sessions/create'
    get 'sessions/destroy'
  end
  namespace :api do
    get 'users/create'
  end
  root "static_pages#root"

end
