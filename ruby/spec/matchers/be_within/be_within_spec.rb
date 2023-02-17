describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(11.5).to be_within(0.5).of(12) }
  it { expect(11.3).not_to be_within(0.5).of(12) }
  it { expect([11.6, 12.2, 12.4]).to all (be_within(0.5).of(12))}
end

# delta 0.5
# 11.5 -> 11.6 -> 11.7 -> 11.8 -> 11.9 -> 12 -> 12.1 -> 12.2 -> 12.3 -> 12.4 -> 12.5