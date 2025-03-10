class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Vérifie si l'utilisateur est admin
  def admin?
    self.admin
  end
end
