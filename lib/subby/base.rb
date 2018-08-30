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

    # Setup
    res = text
    cases_in = self.normalize_options( opts )[:cases_in]
    case_out = self.normalize_options( opts )[:case_out]

    # Main Loop
    cases_in.each do |case_in|
      res = res.gsub(
        CaseChanger.send( case_in, string_in ),
        CaseChanger.send( (case_out || case_in), string_out))
    end

    res
  end

  private

  def self.normalize_options( opts )
    cases_in = ((opts[:case_in] && [opts[:case_in]].flatten) || CASES).
      map { |c| CASES_TO_METHOD[c] }.uniq
    case_out = CASES_TO_METHOD[opts[:case_out]]

    { cases_in: cases_in, case_out: case_out }
  end

end

