require 'treetop'

# Load our custom syntax node classes so the parser can use them
require File.expand_path(File.join(File.dirname(__FILE__), 'node_extensions.rb'))

class Parser
  Treetop.load('arithmetic.treetop')
  @@parser = ArithmeticParser.new
  def self.parse(data)
    tree = @@parser.parse(data)
  end
end

# p Parser.parse('1+1')
# p Parser.parse('1*1')
p Parser.parse('3*5')
p Parser.parse('3*5').to_ast
p Parser.parse('32').to_ast.evaluate({})
