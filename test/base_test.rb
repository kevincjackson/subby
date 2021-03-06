require 'minitest/autorun'
require 'subby.rb'

class BaseTest < Minitest::Test

  INPUT1 = "applePie APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie apple_pie APPLE PIE"
  INPUT2 = "applePie APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie apple_pie APPLE PIE " +
           "applePies APPLE_PIES apple-pies apple pies ApplePies Apple pies Apple Pies apple_pies APPLE PIES"

  def test_sub_with_underscore
    assert_equal(
      "chocolateCake CHOCOLATE_CAKE chocolate-cake chocolate cake ChocolateCake Chocolate cake Chocolate Cake chocolate_cake CHOCOLATE CAKE",
      Subby.sub( INPUT1, "apple_pie", "chocolate_cake"))
  end

  def test_sub_with_camel
    assert_equal(
      "chocolateCake CHOCOLATE_CAKE chocolate-cake chocolate cake ChocolateCake Chocolate cake Chocolate Cake chocolate_cake CHOCOLATE CAKE",
      Subby.sub( INPUT1, "applePie", "chocolateCake"))
  end

  def test_sub_case_in_camel_without_array
    assert_equal(
      "chocolateCake APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie apple_pie APPLE PIE",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_in => "camel"))
  end

  def test_sub_case_in_camel_as_array
    assert_equal(
      "chocolateCake APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie apple_pie APPLE PIE",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_in => ["camel"]))
  end

  def test_sub_case_out_camel
    assert_equal(
      "chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_out => "camel"))
  end

  def test_sub_with_all_numbers
    assert_equal(
      "chocolateCake CHOCOLATE_CAKE chocolate-cake chocolate cake ChocolateCake Chocolate cake Chocolate Cake chocolate_cake CHOCOLATE CAKE " +
      "chocolateCakes CHOCOLATE_CAKES chocolate-cakes chocolate cakes ChocolateCakes Chocolate cakes Chocolate Cakes chocolate_cakes CHOCOLATE CAKES",
      Subby.sub( INPUT2, "applePie", "chocolateCake"))
  end

  def test_case_in_as_string
    assert_equal(
      "chocolateCake APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie apple_pie APPLE PIE",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_in => "camel"))
  end

  def test_case_in_as_symbol
    assert_equal(
      "chocolateCake APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie apple_pie APPLE PIE",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_in => :camel))
  end

  def test_case_in_as_array
    assert_equal(
      "chocolateCake APPLE_PIE apple-pie apple pie ApplePie Apple pie Apple Pie chocolate_cake APPLE PIE",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_in => [:camel, "snake"]))
  end

  def test_case_out_as_string
    assert_equal(
      "chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_out => "camel"))
  end

  def test_case_out_as_symbol
    assert_equal(
      "chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake chocolateCake",
      Subby.sub( INPUT1, "applePie", "chocolateCake", :case_out => :camel))
  end
end
