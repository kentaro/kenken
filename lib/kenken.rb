require "kenken/version"

module Kenkenizer
  def ^(count = 1)
    to_s * count    
  end

  def to_s
    @str
  end
end

class Kenken
  include Kenkenizer
  def initialize(str)
    @str = str
  end
end

class String
  include Kenkenizer
end
