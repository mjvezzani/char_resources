Rails.application.routes.draw do
  resources :pdfs, except: [:edit, :update]
  root to: 'pdfs#index'
end
