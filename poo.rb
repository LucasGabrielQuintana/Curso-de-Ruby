class Persona <Struct.new(:name, :age)

    # attr_accessor :name, :age

    def self.sugested_names 
        ["Pepe", "Pepitp", "Sutano"]
    end


    # def initialize(name, age)
    #     @name = name
    #     @age = age
    # end
end
#     def name 
#         @name
#     end

#     def age
#         @age
#     end

#     persona.name = "pepe"
#     (persona.name="pepe").age = 7
#     def name=(name)
#         @name = name
#         self
#     end

#     def age=(age)
#         @age = age
#         self
#     end


persona = Persona.new("Lucas", 34)

puts persona.name
puts persona.age