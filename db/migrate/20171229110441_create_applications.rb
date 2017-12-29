class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|

    	t.integer :student_id

      t.timestamps
    end
  end
end
