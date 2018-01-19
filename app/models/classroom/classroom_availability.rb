# == Schema Information
#
# Table name: classroom_availabilities
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  classroom_id        :integer
#  time                :string
#  week_day            :string
#  occupational_group  :string
#  application_form_id :integer
#

module Classroom
  class ClassroomAvailability < ApplicationRecord
  
    belongs_to :classroom
    belongs_to :application_form, optional: true, class_name: "ApplicationForm::ApplicationForm"

    scope :available, -> { where(application_form_id: nil) }
  	scope :claimed, -> { where.not(application_form_id: nil) }

    def available_on
      "#{time} #{week_day}"
    end
  end
end
