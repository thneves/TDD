$counter = 0

describe "let" do
  let(:count) { $counter += 1 }

  it 'memoize the value' do
    expect(count).to eq(1) # first time
    expect(count).to eq(1) # stays in cache
  end

  it 'is not cached between tests' do
    expect(count).to eq(2) # first time
  end
end

=begin
let
When you need to attribute a variable, instead to use a before block to create an instance variable, use let.
Using let the variable will be loaded only when it's used for the first time in the test, and it's cached until the test finish.
=end