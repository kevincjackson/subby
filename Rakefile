require 'bundler'
require 'rubygems/package_task'
require 'rake/clean'
require 'yard'

Bundler::GemHelper.install_tasks

# Default task to list all tasks
task :default => [:list_rake_tasks]
task :list_rake_tasks do
  sh "rake -T"
end

# Easiy package gem using 'rake package'
Gem::PackageTask.new(eval(File.read('subby.gemspec'))) do |pkg|
end

# Add yard tasks
YARD::Rake::YardocTask.new do |t|
 t.files   = ['lib/**/*.rb']   # optional
 t.stats_options = ['--list-undoc']         # optional
end

# Testing
desc "Run all tests"
task :test do
  sh "bats test/subby_ui_test.bats"
  sh "bundle exec ruby test/case_changer_test.rb"
  sh "bundle exec ruby test/base_test.rb"
end

desc "Run unit tests"
task :unit_test do
  sh "bundle exec ruby test/case_changer_test.rb"
  sh "bundle exec ruby test/base_test.rb"
end

