require '../lib/calculator.rb'

RSpec.describe Calculator do

  describe 'new' do
    it 'sum method for 2 method' do
      calc = Calculator.new
      result = calc.sum(5, 7)

      expect(result).to eq(12)
    end

    it 'sum method for 2 method with negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5, -7)

      expect(result).to eq(-12)
    end
  end
end