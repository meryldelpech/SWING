class User < ApplicationRecord
  has_many :talents, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :talents_reservations, through: :talents, source: :reservations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
