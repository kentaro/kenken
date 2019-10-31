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

  def test_subtract
    kenken = Kenken.new("ken")
    assert_equal (kenken - "e"), "knkn"
  end

  def test_subtract_when_str_is_hayapi
    kenken = Kenken.new("hayapi")
    assert_equal (kenken - "e"), "knkn"
  end
end

class StringTest < Minitest::Test
  def test_string_pow
    ken = String.new("ken")
    assert_equal (ken ^ 2), "kenken"
  end

  def test_string_pow_when_same_str_is_defined
    tanaken = String.new("ken")
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

  def test_string_literal_pow_when_same_str_is_defined
    tanaken = "ken"
    ken = "ken"
    assert_equal (ken ^ 2), "kenken"
  end

  def test_string_literal_pow_when_str_is_hayapi
    ken = "hayapi"
    assert_equal (ken ^ 2), "kenken"
  end

  def test_string_subtact
    kenken = String.new("ken")
    assert_equal (kenken - "e"), "knkn"
  end

  def test_string_subtact_when_str_is_hayapi
    kenken = String.new("hayapi")
    assert_equal (kenken - "e"), "knkn"
  end

  def test_string_literal_subtact
    kenken = "ken"
    assert_equal (kenken - "e"), "knkn"
  end

  def test_string_literal_subtact_when_str_is_hayapi
    kenken = "hayapi"
    assert_equal (kenken - "e"), "knkn"
  end
end
