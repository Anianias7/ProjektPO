# == Schema Information
#
# Table name: professors
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  professor_id :string
#  first_name   :string
#  last_name    :string
#  sex          :string
#  email        :string
#

module Professor
	class Professor < ApplicationRecord
		has_many :leads
		has_many :correction_courses, through: :leads, class_name: "Course::CorrectionCourse"
		
		has_many :professor_registers, class_name: "Professor::ProfessorRegister"
		has_many :application_forms, through: :professor_registers, class_name: "ApplicationForm::ApplicationForm"

    def full_name
      "#{first_name} #{last_name}"
    end
	end
end
