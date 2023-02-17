require 'counter'

describe 'Matcher change' do
  it { expect{Counter.increment}.to change { Counter.qtd }}
  it { expect{Counter.increment}.to change { Counter.qtd }.by(1)}
  it { expect{Counter.increment}.to change { Counter.qtd }.from(2).to (3)}
end