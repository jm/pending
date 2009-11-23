require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'

# Test::Unit::UI::VERBOSE
test_files_pattern = 'test/**/*_test.rb'
src_files_pattern = 'src/**/*.rb'

Rake::TestTask.new do |t|
  src_files = Dir[src_files_pattern]
  src_files.each { |f| puts f; require f[0...-3] }
  t.pattern = test_files_pattern
  t.verbose = false
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "pending"
    s.version = "0.1.1"
    s.authors = ["Jeremy McAnally"]
    s.email = "jeremymcanally@gmail.com"
    s.summary = %q{pending lets you define a block of test code that is currently "pending" functionality, similar to RSpec's pending method}
    s.homepage = %q{http://jeremymcanally.com}
    s.description = %q{pending lets you define a block of test code that is currently "pending" functionality, similar to RSpec's pending method.}
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end


desc 'Default: run tests.'
task :default => 'test'
