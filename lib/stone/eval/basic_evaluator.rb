require 'stone/line_number_reader'
require 'stone/tokens/token'
require 'stone/lexer'

require 'stone/ast/ast_tree'
require 'stone/ast/ast_leaf'
require 'stone/ast/ast_list'
require 'stone/ast/number_literal'
require 'stone/ast/binary_expr'

module Stone
	module Eval
		class BasicEvaluator
			
			def initialize(lexer)
				@lexer = lexer
			end

			def compute
				left = factor
				if is_token("+") || is_token("-") || is_token("*") || is_token("/")
					op = Leaf.new(lexer.read)
					right = NumberLiteral.new(lexer.read.do_shift(op, next_operator.value))
					left = BinaryExpr([left, op, right])
					compute_number(left,op,right)
				end
			end

			def compute_number(left,op,right)
				if op == "+"
					return left + right
				end
				if op == "-"
					return left - right
				end
				if op == "*"
					return left * right
				end
				if op == "/"
					return left / right
				end

			end

			
			def token(name)
				t = lexer.read
				unless t.is_indentifier? && name == t.get_text
					raise "Parser Exception"
				end
			end

			def is_token?(name)
				t = lexer.peek(0)
				return t.is_identifier? && name == t.get_text
			end
		
		end
	end
end

			