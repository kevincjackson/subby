
Gem::Specification.new do |s|

  # BASIC INFO
  s.name        = "subby"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Jackson"]
  s.email       = ["kj31428@gmail.com"]
  s.summary     = %q{Substitutes string case variations.} 
  s.description = %q{Subby is a command-line tool for substituting string case
    variations.
  }

  # DEPENDENCIES
  s.files       = %w(
    bin/subby
    lib/subby.rb
    lib/subby/base.rb
    lib/subby/case_changer.rb
    man/subby.1
    man/subby.1.html
  )
  s.executables   = ['subby']
  s.require_paths = ['lib']
  s.bindir = 'bin'
  s.add_dependency("activesupport")
  s.add_development_dependency("minitest")
  s.add_development_dependency("rake","~> 10.1.0")
  s.add_development_dependency("rdoc","~> 3.9")
  s.add_development_dependency("ronn")

end
