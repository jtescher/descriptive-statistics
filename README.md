# DescriptiveStatistics

This gem calculates descriptive statistics including measures of central tendency (e.g. mean, median mode), dispersion
(e.g. range, and quartiles), and spread (e.g variance and standard deviation).

Tested against ruby 1.8.7, 1.9.2, 1.9.3, 2.0.0, 2.1.0, ruby-head, jruby-18mode, jruby-19mode, jruby-head, rbx-2.1.1,
rbx-2.2.0, rbx-2.2.1 and ree

[![Build Status](https://secure.travis-ci.org/jtescher/descriptive-statistics.png)]
(http://travis-ci.org/jtescher/descriptive-statistics)
[![Dependency Status](https://gemnasium.com/jtescher/descriptive-statistics.png)]
(https://gemnasium.com/jtescher/descriptive-statistics)
[![Code Climate](https://codeclimate.com/github/jtescher/descriptive-statistics.png)]
(https://codeclimate.com/github/jtescher/descriptive-statistics)
[![Gem Version](https://badge.fury.io/rb/descriptive-statistics.png)]
(http://badge.fury.io/rb/descriptive-statistics)
[![Coverage Status](https://coveralls.io/repos/jtescher/descriptive-statistics/badge.png)]
(https://coveralls.io/r/jtescher/descriptive-statistics)
## Installation

Add this line to your application's Gemfile:

    gem 'descriptive-statistics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install descriptive-statistics

## Usage

### Central Tendency:
```ruby
stats = DescriptiveStatistics::Stats.new([1,1,2,3,10])
stats.mean #=> 3.4
stats.median #=> 2
stats.mode #=> 1
```

### Dispersion:
```ruby
stats = DescriptiveStatistics::Stats.new([1,1,2,3,10])
stats.range #=> 9
stats.min #=> 1
stats.max #=> 10
stats.percentile_from_value(10) #=> 80
stats.value_from_percentile(60) #=> 3
```

### Spread:
```ruby
stats = DescriptiveStatistics::Stats.new([1,1,2,3,10])
stats.variance #=> 14.299999999999999
stats.standard_deviation #=> 3.7815340802378072
stats.relative_standard_deviation #=> 99.47961485463391
```

### Other Measures:
```ruby
stats = DescriptiveStatistics::Stats.new([1,1,2,3,10])
stats.skewness #=> 1.188328915820243
stats.kurtosis #=> 2.405613966453127
```

## Alternative Usage (Not suggested)
If you want to monkey patch descriptive statistics methods into Enumerable, you can use the following:

(e.g. config/initializers/descriptive_statistics_monkey_patch.rb)
```ruby
require 'descriptive-statistics'

module Enumerable
  include DescriptiveStatistics

  # Warning: hacky evil meta programming. Required because classes that have already included
  # Enumerable will not otherwise inherit the statistics methods.
  DescriptiveStatistics.instance_methods.each do |m|
    define_method(m, DescriptiveStatistics.instance_method(m))
  end
end
```

Then you can use these methods directly on Arrays:
```ruby
[1,1,2,3,10].mean #=> 3.4
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
