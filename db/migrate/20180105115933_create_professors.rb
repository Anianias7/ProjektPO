class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|

      t.timestamps

      t.string :professor_id
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :email

    end
  end
end
