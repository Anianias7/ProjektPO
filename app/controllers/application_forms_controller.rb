class ApplicationFormsController < ApplicationController
	def new
		@application_form = student.application_forms.build
		@application_form.build_correction_course
		render :new, locals: {student: student}
	end

	def create
    student.application_forms.create.tap do |af|
      af.correction_course = CorrectionCourse.find(params[:application_form][:correction_course])
    end
		redirect_to student_action_path
	end

	private 

	def student
		Student.find(student_id)
	end

	def student_id
		params[:student_id] || params[:application_form][:student_id]
	end
end
