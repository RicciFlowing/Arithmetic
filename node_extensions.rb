# This module contains our custom syntax node classes. Each
# class represents a distinct type of entity. Each clas
# also has a distinct to_array method which allows the
# final AST to be converted easily into a structured array
# representatiion

Number    = Struct.new :value
Boolean   = Struct.new :value
Variable  = Struct.new :name

Add       = Struct.new :left, :right
Multiply  = Struct.new :left, :right
LessThan  = Struct.new :left, :right

Assign    = Struct.new :name, :expression
Sequence  = Struct.new :first, :second


class Number
  def evaluate(environment)
    value
  end
end

class Boolean
  def evaluate(environment)
    value
  end
end

class Variable
  def evaluate(environment)
    environment[name]
  end
end

class Add
  def evaluate(environment)
    left.evaluate(environment) + right.evaluate(environment)
  end
end

class Multiply
  def evaluate(environment)
    left.evaluate(environment) * right.evaluate(environment)
  end
end
