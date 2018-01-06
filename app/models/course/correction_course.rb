module Course
	class CorrectionCourse < ApplicationRecord
		belongs_to :application_form, optional: true, class_name: "ApplicationForm::ApplicationForm"
		has_many :leads, class_name: "Professor::Lead"
		has_many :professors, through: :leads, class_name: "Professor::Professor"

		enum course_type: [:laboratorium, :ćwiczenia, :wykład, :projekt, :seminarium, :inne]

		scope :available, -> { where(application_form_id: nil) }
		scope :claimed, -> { where.not(application_form_id: nil) }
	end
end
