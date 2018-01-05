module Classroom
	class Classroom < ApplicationRecord

		has_many :classroom_availabilities
		has_many :application_forms, through: :classroom_availabilities

  end
end
