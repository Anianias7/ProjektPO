class AddApplicationFormKeyToClassroomAvailabities < ActiveRecord::Migration[5.1]
  def change
  	add_column :classroom_availabilities, :application_form_id, :integer
  end
end
