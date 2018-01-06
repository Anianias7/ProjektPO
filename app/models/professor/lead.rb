module Professor
	class Lead < ApplicationRecord
		belongs_to :professor
		belongs_to :correction_course, class_name: "Course::CorrectionCourse"
	end
end