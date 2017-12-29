class CreateApplicationForms < ActiveRecord::Migration[5.1]
  def change
    create_table :application_forms do |t|

    	t.integer :student_id

      t.timestamps
    end
  end
end
