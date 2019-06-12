class User < ApplicationRecord
  has_one :rel_user_bixe, dependent: :destroy
  has_one :rel_profile_user, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
