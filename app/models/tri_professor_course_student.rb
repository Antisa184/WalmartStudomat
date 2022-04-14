class TriProfessorCourseStudent < ApplicationRecord
  belongs_to :professor, optional: true
  belongs_to :student, optional: true
  belongs_to :course, optional: true
end
