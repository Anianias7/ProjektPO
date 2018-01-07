class NotificationsController < ApplicationController
  def index
    @application_forms = professor.application_forms
  end

  def show
    @course = course
    @application_form = course.application_form
    @classroom = @application_form.classrooms.first
    @classroom_availability = @classroom.classroom_availabilities.first
  end

  private

  def professor
    Professor::Professor.first
  end

  def course
    Course::CorrectionCourse.find(params[:id])
  end
end
