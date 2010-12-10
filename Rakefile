require 'bundler'
Bundler.setup

require "irb/rake_task"
require "rspec/core/rake_task"

Bundler::GemHelper.install_tasks

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
  t.verbose = false
end

task :default => [:spec]

