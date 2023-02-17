class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = "Feeling Happy!"
  end

  def sad!
    @status = "Feeling Sad!"
  end

  def excited!
    @status = "Feeling Excited!"
  end
end
