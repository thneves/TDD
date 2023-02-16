require 'person'

RSpec.describe Person do
  describe 'have_attributes' do
    it 'has the attributes' do
      person = Person.new
      person.name = "Thales"
      person.age = 20

      expect(person).to have_attributes(name: 'Thales') 
      expect(person).to have_attributes(name: starting_with("T"), age: (be >= 20)) #starting_with alias for start_with
    end
  end
end