class Property < ApplicationRecord

  scope :search_by_district, ->(district) { where('district LIKE ? COLLATE NOCASE', "%#{district}%") }
  scope :search_by_property_type, ->(selected_property_type) {
    where(property_type: selected_property_type) }
  scope :search_by_city, ->(selected_city) {
    where(city: selected_city) }
  scope :search_by_size_range, ->(min_size, max_size) {
    where('size >= :min_size AND size <= :max_size', min_size: min_size, max_size: max_size)
  }
  scope :search_by_rent_range, ->(min_rent, max_rent) {
    where('rent >= :min_rent AND rent <= :max_rent', min_rent: min_rent, max_rent: max_rent)
  }

  enum :property_type, %i[residential office retail]
  enum :city, %i[taipei_City New_Taipei_City]
end
