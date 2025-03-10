Rails.application.routes.draw do
  # Reveals health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

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

  # Route pour la page "Contactez-nous"
  get "contact", to: "home#contact", as: :contact

  # Route pour la page "Boutique"
  get "shop", to: "home#shop", as: :shop

  # Route pour la page "Admin"
  get "admin", to: "home#admin", as: :admin
end
