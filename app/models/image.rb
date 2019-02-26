class Image < ApplicationRecord
  belongs_to :portfolio
  has_one_attached :file
  delegate_missing_to :file
end
