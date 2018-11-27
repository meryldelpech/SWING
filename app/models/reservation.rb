class Reservation < ApplicationRecord
  belongs_to :client, class_name: :User, foreign_key: :user_id
  belongs_to :talent
  has_one :talent_user, through: :talent, source: :user
end
