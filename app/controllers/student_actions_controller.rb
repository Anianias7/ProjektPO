class StudentActionsController < ApplicationController
  def show
    @student = Student::Student.find(1)
  end
end
