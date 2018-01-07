class CreateClassroomAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :classroom_availabilities do |t|
      t.timestamps

      t.integer :classroom_id
      t.string :time
      t.string :week_day
      t.string :occupational_group
    end
  end
end
