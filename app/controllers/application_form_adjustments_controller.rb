class ApplicationFormAdjustmentsController < ApplicationController
  def new
    @application_form_adjustment = application_form.application_form_adjustments.build
    @application_form = application_form
  end

  def create
    application_form.application_form_adjustments.create(application_form_adjustment_params)
    redirect_to notifications_path 
  end

  private

  def application_form
    ApplicationForm::ApplicationForm.find(application_form_id)
  end

  def application_form_id
    params[:application_form_id] || params[:application_form_application_form_adjustment][:application_form_id] 
  end

  def application_form_adjustment_params
    params.require(:application_form_application_form_adjustment).permit(:description)
  end
end
