Rails.application.routes.draw do
  # Reveals health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :pictures, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # Route pour la page d'accueil
  root "home#index"

  # Routes Devise pour l'utilisateur
  devise_for :users

  devise_scope :user do
    # Route pour l'inscription
    get "signup", to: "devise/registrations#new", as: :signup

    # Route pour la connexion
    get "login", to: "devise/sessions#new", as: :login
  end

  # Routes pour la page "Contactez-nous"
  get "contact", to: "contacts#new", as: :contact
  post "contact", to: "contacts#create"

  # Route pour la page "Boutique"
  get "shop", to: "home#shop", as: :shop

  # Routes Admin
  namespace :admin do
    root to: "dashboard#index"  # Remplace l'ancienne route admin
    resources :users
  end
end
