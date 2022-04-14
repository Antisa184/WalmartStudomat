class Professor < ApplicationRecord
  belongs_to :user
  has_many :tri_professor_course_students
  has_many :students, through: :tri_professor_course_students
  has_many :courses, through: :tri_professor_course_students

  def name
    "#{firstName} #{lastName}"
  end
    #has_and_belongs_to_many :students
    #has_and_belongs_to_many :courses
end
