
require 'active_support/core_ext/string/inflections.rb'

# Subby is a module for substituting string case variations.
#
# It has one class method, *::sub*, and a supporting sub-module
# which converts the strings from one case to another.
module Subby

  # CaseChanger is a module for converting strings from one case to another.
  module CaseChanger

    # Convert string to camel-case.
    #   CaseChanger.to_camelcase("apple pie") # => "applePie"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_camelcase( str )
      str.to_s.camelize(:lower)
    end

    # Convert string to class-case.
    #   CaseChanger.to_classcase("applePie") # => "ApplePie"
    # +to_classcase+ is also aliased as +to_modulecase+.
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_classcase( str )
      str.to_s.camelize(:upper)
    end

    # Convert string to constant-case.
    #   CaseChanger.to_constantcase("applePie") # => "APPLE_PIE"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_constantcase( str )
      str.to_s.underscore.upcase
    end

    # Convert string to dash-case.
    #   CaseChanger.to_constantcase("applePie") # => "apple-pie"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_dashcase( str )
      str.to_s.underscore.dasherize
    end

    # Convert string to lower-case.
    #   CaseChanger.to_lowercase("applePie") # => "apple pie"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_lowercase( str )
      str.to_s.underscore.tr('_', ' ')
    end

    # Convert string to sentence-case.
    #   CaseChanger.to_sentencecase("applePie") # => "Apple pie"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_sentencecase( str )
      str.to_s.underscore.tr('_', ' ').capitalize
    end

    # Convert string to underscore-case.
    #   CaseChanger.to_underscorecase("applePie") # => "apple_pie"
    # +to_snakecase+ is also aliased as +to_underscorecase+.
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_snakecase( str )
      str.to_s.underscore
    end

    # Convert string to title-case.
    #   CaseChanger.to_titlecase("applePie") # => "Apple Pie"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_titlecase( str )
      str.to_s.underscore.tr('_', ' ').split.map(&:capitalize).join(' ')
    end

    # Convert string to upper-case.
    #   CaseChanger.to_uppercase("applePie") # => "APPLE PIE"
    # @param str [String] Argument need only respond to +to_s+.
    # @return [String]
    def self.to_uppercase( str )
      str.to_s.underscore.tr('_', ' ').upcase
    end

    singleton_class.send(:alias_method, :to_modulecase, :to_classcase)
    singleton_class.send(:alias_method, :to_underscorecase, :to_snakecase)

  end
end

