require 'person'

RSpec.describe Person do
  describe 'have_attributes' do

    before do
      @person = Person.new
    end

    after do
      @person.name = 'No name'
      puts ">>>>>>>>>>>>> #{@person.inspect}"
    end

    # around(:each) do |test|

    #   puts "before test"
    #   @person = Person.new

    #   test.run

    #   @person.name = 'No name'
    #   puts "after test"
    # end

    it 'has the attributes' do
      @person.name = "Thales"
      @person.age = 20

      expect(@person).to have_attributes(name: 'Thales') 
      expect(@person).to have_attributes(name: starting_with("T"), age: (be >= 20)) #starting_with alias for start_with
    end

    it 'has the attributes' do
      @person.name = 'Thali'
      @person.age = 28

      expect(@person).to have_attributes(name: starting_with("T"), age: (be >= 20)) #starting_with alias for start_with
    end
  end
end