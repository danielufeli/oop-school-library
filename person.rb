class Person
  attr_reader :id
  attr_accessor :name, age

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end

  private

  # rubocop:disable Naming/PredicateName
  def is_of_age?
    @age >= 18
  end
end