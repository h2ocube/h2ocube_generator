require 'bundler/setup'
require 'bundler/gem_tasks'

desc 'Runs all testcases'
task :test do
  require File.realpath('lib/h2ocube_generate.rb')
  require 'test/unit'
  Dir['test/*_test.rb'].each{ |f| require File.realpath(f) }
end

task :default => :test
