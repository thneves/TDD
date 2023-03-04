describe 'Test Double' do
  it 'double' do
    user = double('User')
    allow(user).to receive_messages(name: 'Zé', pass: '123')
    user.name
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Jack')
    allow(user).to receive(:pass).and_return('123')

    user.random_method_that_i_dont_care
    user.random_method_that_dont_exist

    # null object makes it doesnt break
  end
end

=begin
  In other words, a double acts like a Ruby object, it can receive or
  reject "messages"(methods)

  Doubles are 'rigorous/strict', that means, you need to indicate
  which message it they accept.
=end
