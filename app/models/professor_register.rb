class ProfessorRegister < ApplicationRecord

	belongs_to :professor
	belongs_to :application_form
end
