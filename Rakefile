require 'rubocop/rake_task'
require 'rspec/core/rake_task'
require 'coveralls'

Coveralls.wear!
RuboCop::RakeTask.new(:cop)
RSpec::Core::RakeTask.new(:spec)

task default: [:cop, :spec]
