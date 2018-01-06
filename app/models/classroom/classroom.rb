module Classroom
	class Classroom < ApplicationRecord
		has_many :classroom_availabilities
		has_many :application_forms, through: :classroom_availabilities, class_name: "ApplicationForm::Application"
  end
end
