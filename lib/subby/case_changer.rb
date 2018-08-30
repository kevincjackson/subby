# Change cases of strings.
# Example
#   To change "applePie" to "apple_pie" use :to_underscorecase
#   To change "applePie" to "ApplePie" use :to_modulecase
#   To change "applePie" to "Apple pie" use :to_sentencecase
module Subby
  module CaseChanger

    require 'active_support/core_ext/string/inflections.rb'

    def self.to_camelcase( str )
      str.to_s.camelize(:lower)
    end

    def self.to_classcase( str )
      str.to_s.camelize(:upper)
    end

    def self.to_constantcase( str )
      str.to_s.underscore.upcase
    end

    def self.to_dashcase( str )
      str.to_s.underscore.dasherize
    end

    def self.to_lowercase( str )
      str.to_s.underscore.tr('_', ' ')
    end

    def self.to_sentencecase( str )
      str.to_s.underscore.tr('_', ' ').capitalize
    end

    def self.to_snakecase( str )
      str.to_s.underscore
    end

    def self.to_titlecase( str )
      str.to_s.underscore.tr('_', ' ').split.map(&:capitalize).join(' ')
    end

    def self.to_uppercase( str )
      str.to_s.underscore.tr('_', ' ').upcase
    end

    singleton_class.send(:alias_method, :to_modulecase, :to_classcase)
    singleton_class.send(:alias_method, :to_underscorecase, :to_snakecase)

  end
end

