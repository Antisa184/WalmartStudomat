class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.string :JMBAG
      t.date :DOB

      t.timestamps
    end
  end
end
