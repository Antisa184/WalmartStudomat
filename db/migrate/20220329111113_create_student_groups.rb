class CreateStudentGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :student_groups do |t|
      t.string :label
      t.integer :numberOfStudents
      t.integer :classOf

      t.timestamps
    end
  end
end
