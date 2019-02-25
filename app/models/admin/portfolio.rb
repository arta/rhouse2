class Admin::Portfolio < ApplicationRecord
  self.table_name = 'portfolios'

  validates :service, presence: true
end
