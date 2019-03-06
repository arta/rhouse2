class Image < ApplicationRecord
  belongs_to :portfolio
  has_one_attached :file
  delegate_missing_to :file

  validate :file_attached?

  validates_numericality_of :show_order, only_integer: true, greater_than: 0
  validates_uniqueness_of :show_order, scope: :portfolio_id

  scope :ordered, -> { order(show_order: :asc) }

  private
    def file_attached?
      errors.add(:file, :missing) unless file.attached?
    end
end
