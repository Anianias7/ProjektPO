require 'rails_helper'

RSpec.describe Student, :type => :model do
  let(:student_params) {{
    first_name: 'Ania',
    last_name: 'Skrzeszewska',
    id_number: '2121212',
    email: 'ania@pwr.edu.pl',
    sex: 'K'
  }}

  it "is valid with valid attributes" do
    student = Student::Student.new(student_params)

    expect(student).to be_valid
  end

  it "is not valid without a first name" do
    student = Student::Student.new(student_params.except(:first_name))

    expect(student).to_not be_valid
  end

  it "is not valid without a last name" do
    student = Student::Student.new(student_params.except(:last_name))

    expect(student).to_not be_valid
  end

  it "is not valid without a id number" do
    student = Student::Student.new(student_params.except(:id_number))

    expect(student).to_not be_valid
  end

  it "in not valid with invalid email address" do
    wrong_email = 'not_a_valid_email'
    student = Student::Student.new(student_params.merge(email: wrong_email))

    expect(student).to_not be_valid
  end
end
