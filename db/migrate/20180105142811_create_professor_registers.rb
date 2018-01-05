class CreateProfessorRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :professor_registers do |t|

      t.timestamps
      t.integer :professor_id
      t.integer :application_form_id
    end
  end
end
