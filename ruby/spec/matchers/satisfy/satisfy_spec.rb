describe 'Satisfy' do
  it { expect(10).to satisfy { |element| element % 2 == 0} }
  it { expect(9).to satisfy('be multiple of 3') do |element|
     element % 3 == 0
  end
  }
end