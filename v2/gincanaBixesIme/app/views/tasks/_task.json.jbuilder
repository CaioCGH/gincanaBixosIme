json.extract! task, :id, :name, :description, :score_type, :have_score, :group, :send, :max_send, :have_feedback, :created_at, :updated_at
json.url task_url(task, format: :json)
