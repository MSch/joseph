require 'bundler'
Bundler.setup

require "rspec/core/rake_task"

Bundler::GemHelper.install_tasks

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
  t.verbose = false
end

desc("Open IRB console")
task :console do
  require 'irb'
  require 'irb/completion'
  require 'joseph'
  ARGV.clear
  IRB.start
end

task :default => [:spec]

