class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.text :body
      t.string :client_signature
      t.date :job_started_at
      t.date :job_completed_at

      t.timestamps
    end
  end
end
