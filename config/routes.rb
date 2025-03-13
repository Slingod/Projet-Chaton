Rails.application.routes.draw do
  # Vérifie l'état de santé de l'application
  get "up" => "rails/health#show", as: :rails_health_check

  # Routes pour les ressources "pictures"
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
    root to: "dashboard#index"  # Route principale pour l'espace admin
    resources :users
  end

  # Routes pour le processus de paiement avec Stripe
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end