
Gem::Specification.new do |s|

  # BASIC INFO
  s.name        = "subby"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Jackson"]
  s.email       = ["kj31428@gmail.com"]
  s.summary     = %q{Substitutes string case variations.} 
  s.description = %q{Subby is a command-line tool for substituting string case
    variations.
  }
  s.license = "MIT"
  s.post_install_message = "Thanks for installing!"

  # DEPENDENCIES
  s.files       = %w(
    README.md
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
  s.add_development_dependency("minitest", "~> 5")
  s.add_development_dependency("rake","~> 10")
  s.add_development_dependency("ronn")
  s.add_development_dependency("yard")

end
