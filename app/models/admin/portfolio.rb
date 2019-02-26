class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  validates :service, presence: true

  scope :with_attached_images, -> { includes(:images).merge(Image.with_attached_file) }
end
