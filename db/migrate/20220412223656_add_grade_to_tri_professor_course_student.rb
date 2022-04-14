class AddGradeToTriProfessorCourseStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :tri_professor_course_students, :grade, :integer
  end
end
