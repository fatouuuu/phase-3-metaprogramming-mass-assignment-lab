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
