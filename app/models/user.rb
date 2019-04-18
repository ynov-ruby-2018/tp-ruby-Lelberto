class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Rôle de l'utilisateur
  enum role: [:user, :admin]

  # Définit le rôle par défaut si l'utilisateur vient d'être créé
  after_initialize :set_default_role, :if => :new_record?

  has_many :listings

  # Définit le rôle par défaut
  def set_default_role
    self.role ||= :user
  end
end
