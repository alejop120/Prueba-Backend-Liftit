class Vehicle < ApplicationRecord
  belongs_to :user

  validates :plate, presence: { message: "obligatorio" }
  validates :model, presence: { message: "obligatorio" }, numericality: { only_integer: true }
  validates :user_id, presence: { message: "obligatorio" }

  scope :search, -> (params) { where("lower(plate) LIKE ?", "#{params.downcase}%") }

end
