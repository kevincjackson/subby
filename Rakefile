require 'bundler'
require 'rdoc/task'
require 'rubygems/package_task'
require 'rake/clean'
# require 'cucumber'
# require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

# 
task :default => [:list_rake_tasks]
task :list_rake_tasks do
  sh "rake -T"
end

# Easiy package gem
# Adds 'rake package'
spec = eval(File.read('subby.gemspec'))
Gem::PackageTask.new(spec) do |pkg|
end

RDoc::Task.new do |rdoc|
  rdoc.main = "README.rdoc"
  rdoc.rdoc_files.include("README.rdoc","lib/**/*.rb","bin/**/*")
  rdoc.title = 'subby'
end

desc "Run all tests"
task :test do
  sh "bats test/test_subby.bats"
end
