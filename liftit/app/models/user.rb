class User < ApplicationRecord

  has_many :vehicles

  validates :name, presence: { message: "obligatorio" }
  validates :document_number, presence: { message: "obligatorio" }, numericality: { only_integer: true }, uniqueness: true

  scope :search, -> (name, document_number) { where("lower(name) LIKE ? OR document_number::text LIKE ?", "#{name.downcase}%", "#{document_number}%") }

end
