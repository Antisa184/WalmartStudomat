json.extract! course, :id, :name, :course_type, :semester, :ECTS, :created_at, :updated_at
json.url course_url(course, format: :json)
