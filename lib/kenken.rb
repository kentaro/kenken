require "kenken/version"
require "binding_of_caller"

module Kenkenizer
  def ^(count = 1)
    b = binding.of_caller(1)
    var = b.eval('local_variables').each do |v|
      break v if self.hash == v.hash
    end

    var.first.to_s * count
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
