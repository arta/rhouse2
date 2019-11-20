class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  has_many :images, -> { ordered }, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank

  validates :service, presence: true

  scope :bathrooms, -> { where(service: 'Bathrooms').order(updated_at: :desc) }
  scope :decks,     -> { where(service: 'Decks').order(updated_at: :desc) }
  scope :flooring,  -> { where(service: 'Flooring').order(updated_at: :desc) }
  scope :kitchens,  -> { where(service: 'Kitchens').order(updated_at: :desc) }
  scope :roofing,   -> { where(service: 'Roofing').order(updated_at: :desc) }
  scope :siding,    -> { where(service: 'Siding').order(updated_at: :desc) }
  scope :windows,   -> { where(service: 'Windows').order(updated_at: :desc) }

  scope :find_with_attached_images,
    -> (id) { includes(:images).merge(Image.with_attached_file).find(id) }
  scope :with_attached_images,
    -> { includes(:images).merge(Image.with_attached_file) }

  def self.options_for_select_service
    %w(Roofing Siding Decks Kitchens Bathrooms Flooring Windows)
  end

  def new_or_persisted_images
    # .length <= length of (relation) array
    # .count <= SQL COUNT query
    until images.length == images.count + 7
      images.build
    end
    images
  end

  def unavailable_image_show_order
    images.persisted.pluck(:show_order).compact
  end
end
