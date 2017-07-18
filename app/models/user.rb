class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings, dependent: :destroy, foreign_key: :hirer_id
  has_many :weapons, foreign_key: :owner_id, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
end
