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
  gem.signing_key   = File.expand_path('~/.ssh/gem-private_key.pem') if $0 =~ /gem\z/
  gem.cert_chain    = ['gem-public_cert.pem']
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.14"
  gem.add_development_dependency "rake", "~> 10.1"
  if RUBY_VERSION > "1.9"
    gem.add_development_dependency "simplecov", "~> 0.7"
    gem.add_development_dependency "coveralls", "~> 0.6"
  end
end
