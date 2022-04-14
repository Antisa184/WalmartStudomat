class CreateTriProfessorCourseStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :tri_professor_course_students do |t|
      t.integer :professor_id
      t.string :course_name
      t.integer :student_id

      t.timestamps
    end
  end
end
