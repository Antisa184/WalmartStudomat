json.extract! student_group, :id, :label, :numberOfStudents, :classOf, :created_at, :updated_at
json.url student_group_url(student_group, format: :json)
