class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  has_many :images, -> { order(show_order: :asc) }, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank

  validates :service, presence: true

  scope :roofing, -> { where(service: 'Roofing') }
  scope :find_with_attached_images,
    -> (id) { includes(:images).merge(Image.with_attached_file).find(id) }
  scope :with_attached_images,
    -> { includes(:images).merge(Image.with_attached_file) }

  def image_show_order_taken
    images.pluck(:show_order).join(', ')
  end
end
