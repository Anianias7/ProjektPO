class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :id_number
    	t.string :email
    	t.string :sex

      t.timestamps
    end
  end
end
