require 'bundler'
require 'rdoc/task'
require 'rubygems/package_task'
require 'rake/clean'
require 'yard'

Bundler::GemHelper.install_tasks

# Default task = List Tasks
task :default => [:list_rake_tasks]
task :list_rake_tasks do
  sh "rake -T"
end

# Easiy package gem
# Adds 'rake package'
spec = eval(File.read('subby.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
end

# RDoc::Task.new do |rdoc|
#   rdoc.main = "README.rdoc"
#   rdoc.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
#   rdoc.title = 'subby'
# end

YARD::Rake::YardocTask.new do |t|
 t.files   = ['lib/**/*.rb']   # optional
 t.stats_options = ['--list-undoc']         # optional
end

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

