require "test_helper"

class KenkenTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Kenkenizer::VERSION
  end

  def test_kenkenizer_pow
    obj = Kenken.new("ken")
    assert_equal (obj ^ 2), "kenken"
  end
  
  def test_string_pow
    obj = String.new("ken")
    assert_equal (obj ^ 2), "kenken"
  end

  def test_string_literal_pow
    obj = "ken"
    assert_equal (obj ^ 2), "kenken"
  end
end
