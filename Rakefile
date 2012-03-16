require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**_spec.rb'
  spec.rspec_opts = ['--backtrace']
end

namespace :cover_me do

  desc 'Generates and opens code coverage report.'
  task :report do
    require 'cover_me'
    CoverMe.complete!
  end

end

task :test do
  Rake::Task['cover_me:report'].invoke
end

task :spec do
  Rake::Task['cover_me:report'].invoke
end

task :default => :spec
