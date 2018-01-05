class CreateClassroomRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :classroom_registers do |t|

      t.timestamps

      t.integer :application_form_id
      t.integer :classroom_id



    end
  end
end
