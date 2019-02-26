class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  has_many_attached :images

  validates :service, presence: true
end
