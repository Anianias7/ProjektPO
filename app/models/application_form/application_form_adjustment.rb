# == Schema Information
#
# Table name: application_form_adjustments
#
#  id                  :integer          not null, primary key
#  application_form_id :integer
#  description         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

module ApplicationForm
  class ApplicationFormAdjustment < ApplicationRecord
    belongs_to :application_form
  end
end
