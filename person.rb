require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    age >= 18
  end
  # rubocop:enable Naming/PredicateName

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private :is_of_age?
end

