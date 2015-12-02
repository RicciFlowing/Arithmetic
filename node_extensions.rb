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
