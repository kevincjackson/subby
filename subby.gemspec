
Gem::Specification.new do |s|

  # BASIC INFO
  s.name        = "subby"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Jackson"]
  s.email       = ["kj31428@gmail.com"]
  s.summary     = %q{Substitutes a string and its case variations}
  s.description = %q{
    Substitutes a string and its case variations.
  }

  # DEPENDENCIES
  s.files       = %w(
    bin/subby
    lib/subby.rb
    lib/subby/base.rb
    lib/subby/case_changer.rb
    lib/subby/case_changer/methods.rb
    man/subby
    man/subby.html
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
