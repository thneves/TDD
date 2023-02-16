describe 'Predicates' do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end
end

# Any predicated method in ruby can be tested using be_predicated