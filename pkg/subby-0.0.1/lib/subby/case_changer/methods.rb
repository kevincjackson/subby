# Change cases of strings.
# Example
#   To change "applePie" to "apple_pie" use :to_underscorecase
#   To change "applePie" to "ApplePie" use :to_modulecase
#   To change "applePie" to "Apple pie" use :to_sentencecase
module Subby
  module CaseChanger
    module Methods

      require 'active_support/all'

      def to_camelcase( str )
        str.camelize(:lower)
      end

      def to_classcase( str )
        str.camelize(:upper)
      end

      def to_constantcase( str )
        str.underscore.upcase
      end

      def to_dashcase( str )
        str.underscore.dasherize
      end

      def to_lowercase( str )
        str.underscore.tr('_', ' ')
      end

      def to_sentencecase( str )
        str.underscore.tr('_', ' ').capitalize
      end

      def to_snakecase( str )
        str.underscore
      end

      def to_titlecase( str )
        str.underscore.tr('_', ' ').split.map(&:capitalize).join(' ')
      end

      def to_uppercase( str )
        str.underscore.tr('_', ' ').upcase
      end

      alias_method :to_modulecase, :to_classcase
      alias_method :to_underscorecase, :to_snakecase

    end
  end
end

