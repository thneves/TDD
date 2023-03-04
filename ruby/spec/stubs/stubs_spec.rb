require 'student'
require 'course'

describe 'Stub' do
  it 'somethind' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:has_finished?).
    with(an_instance_of(Course)). # collaborator method
    and_return(false)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end
end


=begin
  Stub is just forcing an specific answer for some method of a
  collaborator object
=end
