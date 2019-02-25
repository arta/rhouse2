class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :service
      t.text :description
      t.date :job_started_at
      t.date :job_completed_at

      t.timestamps
    end
  end
end
