class Proveedor < ApplicationRecord
  has_many :resenas, dependent: :destroy
  has_one_attached :avatar
end
