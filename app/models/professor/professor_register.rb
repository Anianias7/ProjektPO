# == Schema Information
#
# Table name: professor_registers
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  professor_id        :integer
#  application_form_id :integer
#

module Professor
	class ProfessorRegister < ApplicationRecord
		belongs_to :professor
		belongs_to :application_form, class_name: "ApplicationForm::ApplicationForm"
	end
end
