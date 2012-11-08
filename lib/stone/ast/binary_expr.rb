# -*- coding: utf-8 -*-

module Stone
  module Ast
    class BinaryExpr < AstList
      def initialize(list)
        super(list)
      end

      def left
        self.child(0)
      end

      def operator
        self.child(1).token.get_text
      end

      def right
        self.child(2)
      end
    end
  end
end