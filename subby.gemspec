$LOAD_PATH.push File.expand_path("../lib", __FILE__)

require "subby/version"

Gem::Specification.new do |s|
  s.name        = "subby"
  s.version     = Subby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Jackson"]
  s.email       = ["kj31428@gmail.com"]
  s.summary     = %q{Substitutes a string and its case variations}
  s.description = %q{Substitutes a string and its case variations}
  s.files       = %w(
                    bin/subby
                    man/subby.1
                    man/subby.1.html
                  )
  s.executables   = ['subby']
  s.add_dependency("activesupport")
  s.add_development_dependency("rake","~> 10.1.0")
  s.add_development_dependency("rdoc","~> 3.9")#
end
