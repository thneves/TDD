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

    context '#division' do
      it 'will raise error when dividing by 0' do
        expect{ subject.division(3, 0)}.to raise_error(ZeroDivisionError)
        expect{ subject.division(3, 0)}.to raise_error("divided by 0")
        expect{ subject.division(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      end
    end
  end
end