json.extract! admin_testimonial, :id, :body, :client_signature, :job_started_at, :job_completed_at, :created_at, :updated_at
json.url admin_testimonial_url(admin_testimonial, format: :json)
