Rails.application.routes.draw do

  resources :profiles

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  root to: 'high_voltage/pages#show', id: 'home'
end
