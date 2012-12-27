# -*- coding: utf-8 -*-
<<<<<<< HEAD
require 'ast/block_stmnt'
require 'ast/parameter_list'

=======
>>>>>>> 87569e14fa1909d86a1beb8c73f941e4a6eafdf8
module Stone
  class Function
    attr :parameters, :body

<<<<<<< HEAD
    @parameters = ParameterList.new
    @body = BlockStmnt.new
    @env = nil

=======
>>>>>>> 87569e14fa1909d86a1beb8c73f941e4a6eafdf8
    def initialize(params, body, env)
      @parameters = params
      @body = body
      @env = env
    end

    def make_env
      NestedEnv.new(@env)
    end

    def to_string
      "<fun: " + hashCode() + ">"
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 87569e14fa1909d86a1beb8c73f941e4a6eafdf8
