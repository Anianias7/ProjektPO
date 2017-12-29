class CreateCorrectionCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :correction_courses do |t|

    	t.integer :application_form_id
    	t.string :name
    	t.integer :course_type
    	t.datetime :correction_course_start
    	t.boolean :is_list_closed
      t.timestamps
    end
  end
end
