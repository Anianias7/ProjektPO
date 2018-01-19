# == Schema Information
#
# Table name: correction_courses
#
#  id                      :integer          not null, primary key
#  application_form_id     :integer
#  name                    :string
#  course_type             :integer
#  correction_course_start :datetime
#  is_list_closed          :boolean
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

module Course
	class CorrectionCourse < ApplicationRecord
		belongs_to :application_form, optional: true, class_name: "ApplicationForm::ApplicationForm"
		has_many :leads, class_name: "Professor::Lead"
		has_many :professors, through: :leads, class_name: "Professor::Professor"

		enum course_type: [:laboratorium, :ćwiczenia, :wykład, :projekt, :seminarium, :inne]

		scope :available, -> { where(application_form_id: nil) }
		scope :claimed, -> { where.not(application_form_id: nil) }

    def full_name
      "#{name} #{course_type[0].upcase}"
    end
	end
end
