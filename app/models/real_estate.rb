class RealEstate < ApplicationRecord
  enum real_estate_type: [:appartment, :house, :office, :other]
  enum wall_material: [:brick, :concrete, :wood, :other_material]

  belongs_to :city, optional: true
  has_one_attached :header_image
  has_many_attached :pictures
end
