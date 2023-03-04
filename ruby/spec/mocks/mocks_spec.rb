require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # setup
    student = Student.new

    #verify
    expect(student).to receive(:bar)

    # exercise
    student.bar
  end

  it 'args' do
    student = Student.new

    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it 'repetition' do
    student = Student.new

    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
  end

  it 'return' do
    student = Student.new

    expect(student).to receive(:foo).with(123).and_return(true)

    student.foo(123)
  end
end

# Mocks are used for the Verify phase
# Mocks are used to test behaviors
