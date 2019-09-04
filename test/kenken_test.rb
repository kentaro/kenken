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

  def test_kenkenizer_subtract
    obj = Kenken.new("kenken")
    assert_equal (obj - 'e'), "knkn"
  end
  
  def test_string_subtract
    obj = String.new("kenken")
    assert_equal (obj - 'e'), "knkn"
  end

  def test_string_literal_subtract
    obj = "kenken"
    assert_equal (obj - 'e'), "knkn"
  end
end
