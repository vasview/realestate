class RealEstate < ApplicationRecord

  enam :real_estate_type [:appartment, :house, :office, :other]
  enam :wall_material [:brick, :concrete, :wood, :other]
end
