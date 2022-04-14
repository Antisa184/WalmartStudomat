class AddUserIdToProfessors < ActiveRecord::Migration[7.0]
  def change
    add_column :professors, :user_id, :integer
    add_index :professors, :user_id
  end
end
