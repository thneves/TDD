require 'calculator'

RSpec.describe Calculator do

  describe 'Calculator' do
    context '#sum' do
      it 'has positive numbers' do
        result = subject.sum(5, 7)
  
        expect(result).to eq(12)
      end
  
      it 'has negative numbers' do
        result = subject.sum(-5, 7)
  
        expect(result).to eq(2)
      end
    end
  end
end