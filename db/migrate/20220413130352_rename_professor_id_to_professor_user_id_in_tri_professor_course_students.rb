class RenameProfessorIdToProfessorUserIdInTriProfessorCourseStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :tri_professor_course_students, :professor_id, :professor_user_id
  end
end
