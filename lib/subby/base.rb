require 'subby/case_changer.rb'

module Subby
#
  # Cases and Examples
  #   Case                Example
  #   -------------------------------
  #   camel               applePie
  #   class | module      ApplePie
  #   constant            APPLE_PIE
  #   dash                apple-pie
  #   lower               apple pie
  #   sentence            Apple pie
  #   snake | underscore  apple_pie
  #   title               Apple Pie
  #   upper               APPLE PIE
  CASES = %w( camel class constant dash lower module sentence snake title underscore upper )

  # Substitutes string case variations in text.
  # By default this method command is *greedy*.
  # It will substitute all string_in case variations that it knows.
  # The case variations with examples are listed above in the +CASES+ constant.
  #
  #   # Default Usage
  #   Subby.sub("apple pie applePie apple_pie", "applePie", "chocolateCake")
  #   # => "chocolate cake chocolateCake chocolate_cake"
  #
  #   # Change one case to another
  #   Subby.sub("apple pie applePie apple_pie", "applePie", "applePie",
  #     :case_in => :camel,
  #     :case_out => :snake)
  #   # => "apple pie apple_pie apple_pie"
  #
  #   # Only target certain cases
  #   Subby.sub("apple pie applePie apple_pie", "applePie", "chocolateCake",
  #     :case_in => [:camel, :snake])
  #   # => "apple pie chocolateCake chocolate_cake"
  #
  # @param text [String] The text to be scanned for substitutions.
  # @param string_in [String] The string to be replaced.
  # @param string_out [String] The replacement string.
  # @param opts [Hash] Options
  #   * +:case_in+: Takes a CASE or [CASE]. Operates only on the given cases in
  #     order specified.
  #   * +:case_out+: Takes a CASE. All incoming cases will be converted to this
  #     case.
  # @return [String]
  def self.sub( text="", string_in="", string_out="", opts={} )

    # Setup
    res = text.to_s
    case_in = self.normalize_options( opts )[:case_in]
    case_out = self.normalize_options( opts )[:case_out]

    # Main Loop
    case_in.each do |case_in|
      res = res.gsub(
        CaseChanger.send( case_in, string_in ),
        CaseChanger.send( (case_out || case_in), string_out) )
    end

    res
  end

  private

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

  def self.normalize_options( opts )
    case_in = ( (opts[:case_in] && [opts[:case_in]].flatten.map(&:to_s)) || CASES).
      map { |c| CASES_TO_METHOD[c] }.uniq
    case_out = CASES_TO_METHOD[opts[:case_out].to_s]

    { case_in: case_in, case_out: case_out }
  end

end

