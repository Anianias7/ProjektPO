class StudentActionsController < ApplicationController
	def show
		@student = Student.find(1)
	end
end
