class Portfolio < ApplicationRecord
  has_many :images, -> { ordered }

  scope :decks,     -> { where(service: 'Decks') }
  scope :flooring,  -> { where(service: 'Flooring') }
  scope :roofing,   -> { where(service: 'Roofing') }
  scope :siding,    -> { where(service: 'Siding') }
  scope :windows,   -> { where(service: 'Windows') }
end
