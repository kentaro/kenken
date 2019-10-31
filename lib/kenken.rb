require "kenken/version"
require "binding_of_caller"

module Kenkenizer
  def ^(count = 1)
    var.to_s * count
  end

  def -(other = '')
    var.to_s.delete(other)
  end

  private

  def var
    b = binding.of_caller(2)
    b.eval('local_variables').find do |v|
      var = b.eval(v.to_s)
      self.equal?(var)
    end
  end
end

class Kenken
  include Kenkenizer
  def initialize(str)
    @str = str
  end

  def to_s
    @str
  end
end

class String
  include Kenkenizer
end
