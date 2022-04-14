class CreateProfessors < ActiveRecord::Migration[7.0]
  def change
    create_table :professors do |t|
      t.string :firstName
      t.string :lastName
      t.date :DOB
      t.string :OIB

      t.timestamps
    end
  end
end
