#!/usr/bin/env ruby

require 'active_support/all'
require 'optparse'

################################################################################
# Get options
################################################################################
options = {}

option_parser = OptionParser.new do |opts|
  opts.on("--[no-]camel") { |cam| options[:camel] = cam }
  opts.on("--[no-]title") { |ttl| options[:ttl] = cam }
  opts.on("--[no-]underscore", "--[no-]snakecase") { |cam| options[:und] = cam }
  opts.on("--[no-]dashes") { |dash| options[:dash] = cam }
  opts.on("--[no-]camel") { |cam| options[:camel] = cam }
  opts.on("--[no-]camel") { |cam| options[:camel] = cam }
end

option_parser.parse!

################################################################################
# Main
################################################################################

USAGE = """
Usage 
> progsub my_infile my_outfile sadMonkey happyProgrammer

Progsub (Programmer Substitute) attempts to replace all variations of a word 
or multiple words

Example 
  You would like to replace all the variations of 'ChocolateCake' with 'ApplePie' in a file
  Progsub will make the following substitutions:
      ChocolateCake -> ApplePie      # CapitalCamel
      chocolateCake -> applePie      # LowerCamel
      Chocolate Cake -> Apple Pie    # Title
      chocolate cake -> apple pie    # Lowercase
      chocolate-cake -> apple-pie    # Dashes
      chocolate_cake -> apple_pie    # Underscore (Snakecase)
      ChocolateCakes -> ApplePies     # Plural CapitalCamel
      chocolateCakes -> applePies     # Plural LowerCamel
      Chocolate Cakes -> Apple Pies   # Plural Title
      chocolate cakes -> apple pies   # Plural Lowercase
      chocolate-cakes -> apple-pies   # Plural Dashes
      chocolate_cakes -> apple_pies   # Plural Underscore (Snakecase)
  
"""

# # Setup
# if ARGV.count != 4
#   puts USAGE
#   exit 1
# end

# in_file = File.read(ARGV[0])
# in_text = ARGV[2]
# out_text = ARGV[3]
# contents = in_file

# # Modify
# contents = contents.gsub( in_text.titleize, out_text.titleize )
# contents = contents.gsub( in_text.camelize, out_text.camelize )
# contents = contents.gsub( in_text.camelize(:lower), out_text.camelize(:lower) )
# contents = contents.gsub( in_text.titleize.downcase, out_text.titleize.downcase)
# contents = contents.gsub( in_text.underscore, out_text.underscore )
# contents = contents.gsub( in_text.underscore.dasherize, out_text.underscore.dasherize )

# # Output
# File.open(ARGV[1], 'w') { |f| f.write(contents) }

