class Resena < ApplicationRecord
  belongs_to :proveedor
  has_many_attached :photos
end
