# Change cases of strings.
# Example
#   To change "applePie" to "apple_pie" use :to_underscorecase
#   To change "applePie" to "ApplePie" use :to_modulecase
#   To change "applePie" to "Apple pie" use :to_sentencecase
module Subby
  module CaseChanger

    require 'subby/case_changer/methods.rb'
    extend Methods

  end
end

