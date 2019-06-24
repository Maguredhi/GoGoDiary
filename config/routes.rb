Rails.application.routes.draw do
  root 'diaries#index'
  resources :diaries do
    collection do
      get :set_map_session, to: 'diaries#set_map_session'
    end
    resources :map_session, only: :create
  end

  resource :tag
  resources :drafts
  resources :pictures
  resources :pockets
  devise_for :users
  resources :users
  get "/ajax", to: "users#ajax"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
