describe 'Test Double' do
  it 'double' do
    user = double('User')
    allow(user).to receive_messages(name: 'Zé', pass: '123')
    user.name
  end
end

=begin
  In other words, a double acts like a Ruby object, it can receive or
  reject "messages"(methods)

  Doubles are 'rigorous/strict', that means, you need to indicate
  which message it they accept.
=end
