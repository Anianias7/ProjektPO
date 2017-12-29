class ApplicationFormsController < ApplicationController
	def new
		render :new, locals: {student: student}
	end

	private 

	def student
		Student.find(params[:student_id])
	end
end
