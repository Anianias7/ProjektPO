# == Schema Information
#
# Table name: classrooms
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  room_number     :string
#  building_number :string
#  classroom_type  :string
#  capacity        :integer
#

module Classroom
	class Classroom < ApplicationRecord
		has_many :classroom_availabilities
		has_many :application_forms, through: :classroom_availabilities, class_name: "ApplicationForm::Application"

    def full_name
      "#{room_number}, #{building_number}"
    end
  end
end
