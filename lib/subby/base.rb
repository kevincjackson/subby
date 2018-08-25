require 'subby/case_changer.rb'

module Subby

  # Constants
  CASES = %w( camel class constant dash lower module sentence snake title underscore upper )
  CASES_TO_METHOD = {
    "camel" => :to_camelcase,
    "class" => :to_modulecase,
    "constant" => :to_constantcase,
    "dash" => :to_dashcase,
    "lower" => :to_lowercase,
    "module" => :to_modulecase,
    "snake" => :to_underscorecase,
    "sentence" => :to_sentencecase,
    "title" => :to_titlecase,
    "underscore" => :to_underscorecase,
    "upper" => :to_uppercase
  }

  def self.sub( text="", string_in="", string_out="", opts={} )

    res = text

    # Normalize options
    cases_in = ((opts[:case_in] && [opts[:case_in]].flatten) || CASES).
      map { |c| CASES_TO_METHOD[c] }.uniq
    case_out = CASES_TO_METHOD[opts[:case_out]]

    # Number and case loops
    cases_in.each do |case_in|
      res = res.gsub(
        CaseChanger.send( case_in, string_in ),
        CaseChanger.send( (case_out || case_in), string_out))
    end

    res
  end

end

