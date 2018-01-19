class ApplicationFormsController < ApplicationController
  def new
    @application_form = student.application_forms.build
    @application_form.build_correction_course
    render :new, locals: {
      student: student,
      application_form_number: application_form_number
    }
  end

  def create
    student.application_forms.create.tap do |af|
      af.correction_course = Course::CorrectionCourse.find(correction_course_id)
      af.professors << Professor::Professor.find(professor_id)
      classroom_availability.update(application_form_id: af.id)
    end
    redirect_to student_action_path
  end

  private 

  def student
    Student::Student.find(student_id)
  end

  def student_id
    params[:student_id] || params[:application_form_application_form][:student_id]
  end

  def professor_id
    params[:application_form_application_form][:professors]
  end

  def correction_course_id
    params[:application_form_application_form][:correction_course]
  end

  def classroom_availability
    Classroom::ClassroomAvailability.find(classroom_availability_id)
  end

  def classroom_availability_id
    params[:application_form_application_form][:classroom_availabilities]
  end

  def application_form_number
    ApplicationForm::ApplicationForm.count + 1
  end
end
