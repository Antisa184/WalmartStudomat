class Course < ApplicationRecord
  has_many :tri_professor_course_students
  has_many :professors, through: :tri_professor_course_students
  has_many :courses, through: :tri_professor_course_students
end
