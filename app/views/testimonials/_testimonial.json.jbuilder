json.extract! testimonial, :id, :body, :client_signature, :job_started_at, :job_completed_at, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
