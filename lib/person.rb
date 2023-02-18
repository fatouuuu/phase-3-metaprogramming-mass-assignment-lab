class Person
  # your code here
  ATTRIBUTES = [:name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width]

  attr_accessor *ATTRIBUTES

  def initialize(attributes = {})
    attributes.each do |attr, value|
      raise ArgumentError, "unknown attribute: #{attr}" unless ATTRIBUTES.include?(attr)
      send("#{attr}=", value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }

bob = Person.new(bob_attributes)
puts bob.name       
puts bob.hair_color 

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
puts susan.name      
puts susan.height    
puts susan.eye_color