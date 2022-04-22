require_relative 'person'
require_relative 'capitalizedecorator'
require_relative 'trimmerdecorator'

person = Person.new(1, 22, 'maximilianus')
person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
puts capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedperson)
puts capitalizedtrimmedperson.correct_name
