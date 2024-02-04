class Image < ApplicationRecord
  belongs_to :portfolio
  has_one_attached :file
  delegate_missing_to :file

  validate :file_is_attached?
  validate :file_is_image?

  validates_numericality_of :show_order, only_integer: true, greater_than: 0,
    if: :show_order_present?
  validates_uniqueness_of :show_order, scope: :portfolio_id,
    if: :show_order_present?

  scope :ordered, -> { order(show_order: :asc) }
  scope :persisted, -> { where.not(id: nil) }

  private
    def file_is_attached?
      errors.add(:file, :missing) unless file.attached?
    end

    def file_is_image?
      if file.attached?
        unless file.content_type.in?(%w(image/jpg image/jpeg image/png))
          errors.add(:file, :invalid)
        end
      end
    end

    def show_order_present?
      show_order.present?
    end
end