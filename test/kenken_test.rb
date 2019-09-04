require "test_helper"

class KenkenizerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Kenkenizer::VERSION
  end
end

class KenkenTest < Minitest::Test
  def test_pow
    ken = Kenken.new("ken")
    assert_equal (ken ^ 2), "kenken"
  end

  def test_pow_when_str_is_hayapi
    ken = Kenken.new("hayapi")
    assert_equal (ken ^ 2), "kenken"
  end

  def test_to_s
    ken = Kenken.new("ken")
    assert_equal ken.to_s, "ken"
  end

  def test_to_s_when_str_is_hayapi
    ken = Kenken.new("hayapi")
    assert_equal ken.to_s, "hayapi"
  end
end

class StringTest < Minitest::Test
  def test_string_pow
    ken = String.new("ken")
    assert_equal (ken ^ 2), "kenken"
  end

  def test_string_pow_when_str_is_hayapi
    ken = String.new("hayapi")
    assert_equal (ken ^ 2), "kenken"
  end

  def test_string_literal_pow
    ken = "ken"
    assert_equal (ken ^ 2), "kenken"
  end

  def test_string_literal_pow_when_str_is_hayapi
    ken = "hayapi"
    assert_equal (ken ^ 2), "kenken"
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
