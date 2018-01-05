class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|

      t.timestamps

      t.integer :professor_id
      t.integer :correction_course_id
    end
  end
end
