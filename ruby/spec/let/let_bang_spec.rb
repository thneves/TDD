$count = 0

describe 'let!' do
  invoke_order = []

  let!(:counter) do
    invoke_order << :let!
    $count += 1
  end

  it 'calls the helper method before the test' do
    invoke_order << :example
    expect(invoke_order).to eq([:let!, :example]) #with the regular let, the array would have only :example inside.
    expect(counter).to eq 1
  end
end

# You can use let! to force the invocation of the method/helper before each test!
# remember that the regular let is invocated only when the test starts