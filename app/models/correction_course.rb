class CorrectionCourse < ApplicationRecord
	belongs_to :application_form, optional: true

	enum course_type: [:laboratorium, :ćwiczenia, :wykład, :projekt, :seminarium, :inne]

	scope :available, -> { where(application_form_id: nil) }
	scope :claimed, -> { where.not(application_form_id: nil) }

end