# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  id_number  :string
#  email      :string
#  sex        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module Student
	class Student < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :id_number, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

		has_many :application_forms, class_name: "ApplicationForm::ApplicationForm"
	end
end
