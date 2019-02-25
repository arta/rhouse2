json.extract! admin_portfolio, :id, :service, :description, :job_started_at, :job_completed_at, :created_at, :updated_at
json.url admin_portfolio_url(admin_portfolio, format: :json)
