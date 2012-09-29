# DescriptiveStatistics

This gem calculates measures of central tendency (e.g. mean, median mode), dispersion (e.g. range, and quartiles), and
spread (e.g variance and standard deviation)

[![Build Status](https://secure.travis-ci.org/jtescher/descriptive-statistics.png)]
(http://travis-ci.org/jtescher/descriptive-statistics)
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
stats = DescriptiveStatistics.new([1,1,2,3,10])
stats.mean #=> 3.4
stats.median #=> 2
stats.mode #=> 1
```

### Dispersion:
```ruby
stats = DescriptiveStatistics.new([1,1,2,3,10])
stats.range #=> 9
stats.percentile_from_value(10) #=> 80
stats.value_from_percentile(60) #=> 3
```

### Spread:
```ruby
stats = DescriptiveStatistics.new([1,1,2,3,10])
stats.variance #=> 14.299999999999999
stats.standard_deviation #=> 3.7815340802378072
```

### Other Measures:
```ruby
stats = DescriptiveStatistics.new([1,1,2,3,10]).skewness #=> 1.188328915820243
stats = DescriptiveStatistics.new([1,1,2,3,10]).kurtosis #=> 2.405613966453127
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request