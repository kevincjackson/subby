require 'minitest/autorun'
require 'subby.rb'

class CaseChangerTest < Minitest::Test

  def test_to_camelcase
    assert_equal("applePie", Subby::CaseChanger.to_camelcase("apple_pie"))
  end

  def test_to_classcase
    assert_equal("ApplePie", Subby::CaseChanger.to_classcase("apple_pie"))
  end

  def test_to_constantcase
    assert_equal("APPLE_PIE", Subby::CaseChanger.to_constantcase("apple_pie"))
  end

  def test_to_dashcase
    assert_equal("apple-pie", Subby::CaseChanger.to_dashcase("apple_pie"))
  end

  def test_to_lowercase
    assert_equal("apple pie", Subby::CaseChanger.to_lowercase("apple_pie"))
  end

  def test_to_modulecase
    assert_equal("ApplePie", Subby::CaseChanger.to_modulecase("apple_pie"))
  end

  def test_to_sentencecase
    assert_equal("Apple pie", Subby::CaseChanger.to_sentencecase("apple_pie"))
  end

  def test_to_snakecase
    assert_equal("apple_pie", Subby::CaseChanger.to_snakecase("applePie"))
  end

  def test_to_titlecase
    assert_equal("Apple Pie", Subby::CaseChanger.to_titlecase("apple_pie"))
  end

  def test_to_underscorecase
    assert_equal("apple_pie", Subby::CaseChanger.to_underscorecase("apple_pie"))
  end

  def test_to_uppercase
    assert_equal("APPLE PIE", Subby::CaseChanger.to_uppercase("apple_pie"))
  end

end
