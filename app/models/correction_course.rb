class CorrectionCourse < ApplicationRecord
	belongs_to :application_form, optional: true
	has_many :leads
	has_many :professors, through: :leads

	enum course_type: [:laboratorium, :ćwiczenia, :wykład, :projekt, :seminarium, :inne]

	scope :available, -> { where(application_form_id: nil) }
	scope :claimed, -> { where.not(application_form_id: nil) }

end
