class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
    if Person.class != Person 
      begin 
      raise PartnerError
      rescue PartnerError => error 
        puts error.message 
    else
      Person.partner = self 
    end
  end
  
  class PartnerError < StandardError 
    def message 
      "You must give the get_married method an argument of instance of the person class!"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




