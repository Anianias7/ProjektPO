# == Schema Information
#
# Table name: leads
#
#  id                   :integer          not null, primary key
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  professor_id         :integer
#  correction_course_id :integer
#

module Professor
	class Lead < ApplicationRecord
		belongs_to :professor
		belongs_to :correction_course, class_name: "Course::CorrectionCourse"
	end
end
