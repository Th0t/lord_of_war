class Weapon < ApplicationRecord
  weapons_category = %w(pistols riffles knives heavy shotguns swords)

  belongs_to :owner, class_name: "User"
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: weapons_category, allow_nil: false }
  validates :price, presence: true
end
