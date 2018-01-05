class ApplicationForm < ApplicationRecord
	belongs_to :student
	has_one :correction_course

	has_many :professor_registers
	has_many :professors, through: :professor_registers

	has_many :classroom_availabilities, class_name: "Classroom::ClassroomAvailabilities"
	has_many :classrooms, through: :classroom_availabilities, class_name: "Classroom::ClassroomAvailabilities"
end
