class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, reject_if: :all_blank

  validates :service, presence: true

  scope :roofing, -> { where(service: 'Roofing') }
  scope :with_attached_images,
    -> { includes(:images).merge(Image.with_attached_file) }

  def image_show_order_taken
    images.pluck(:show_order).join(', ')
  end

  def persisted_images_plus_one_new
    self.images.new unless images.last.new_record?
    self.images
  end
end
