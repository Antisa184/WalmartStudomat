class RenameStudentIdToStudentUserIdInTriProfessorCourseStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :tri_professor_course_students, :student_id, :student_user_id
  end
end
