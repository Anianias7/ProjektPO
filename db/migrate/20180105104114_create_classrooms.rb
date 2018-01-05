class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|

      t.timestamps

     	t.string :room_number
     	t.string :building_number
     	t.string 	:classroom_type
     	t.integer :capacity

    end
  end
end
