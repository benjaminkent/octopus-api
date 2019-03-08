Rails.application.routes.draw do

  namespace :api do
    resources :events, only: [ :index, :show, :post, :put, :delete ]
  end

end
