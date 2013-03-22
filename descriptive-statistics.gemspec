# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'descriptive-statistics/version'

Gem::Specification.new do |gem|
  gem.name          = "descriptive-statistics"
  gem.version       = DescriptiveStatistics::VERSION
  gem.authors       = ["Julian Tescher"]
  gem.email         = ["virulent@gmail.com"]
  gem.description   = %q{Descriptive Statistics Calculator}
  gem.summary       = %q{Simply calculate descriptive statistics such as measures of central tendency (e.g. mean,median,
                         mode), dispersion (e.g. range and quartiles), and spread (e.g variance and standard deviation)}
  gem.homepage      = "https://github.com/jtescher/descriptive-statistics"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.13.0"
  gem.add_development_dependency "rake", "~> 10.0.3"
end
