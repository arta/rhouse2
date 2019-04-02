class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  has_many :images, -> { ordered }, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank

  validates :service, presence: true

  scope :bathrooms, -> { where(service: 'Bathrooms') }
  scope :decks,     -> { where(service: 'Decks') }
  scope :flooring,  -> { where(service: 'Flooring') }
  scope :kitchens,  -> { where(service: 'Kitchens') }
  scope :roofing,   -> { where(service: 'Roofing') }
  scope :siding,    -> { where(service: 'Siding') }
  scope :windows,   -> { where(service: 'Windows') }

  scope :find_with_attached_images,
    -> (id) { includes(:images).merge(Image.with_attached_file).find(id) }
  scope :with_attached_images,
    -> { includes(:images).merge(Image.with_attached_file) }

  def unavailable_image_show_order
    images.pluck(:show_order).compact
  end

  def available_image_show_order
    case unavailable_image_show_order.size
    when 0 then [1]
    else
      (1..unavailable_image_show_order.size+2).to_a-unavailable_image_show_order
    end
  end
end
