begin
  require 'simplecov'
  require 'coveralls'
  #SimpleCov.formatter = Coveralls::SimpleCov::Formatter
  SimpleCov.start
rescue LoadError
  # Simplecov and coveralls do not work in Ruby < 1.9
end


$LOAD_PATH << File.expand_path('../../lib', __FILE__)
require 'descriptive-statistics'