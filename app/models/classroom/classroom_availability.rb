module Classroom
  class ClassroomAvailability < ApplicationRecord
  
    belongs_to :classroom
    belongs_to :application_form, optional: true, class_name: "ApplicationForm::ApplicationForm"

    scope :available, -> { where(application_form_id: nil) }
	scope :claimed, -> { where.not(application_form_id: nil) }
  end
end
