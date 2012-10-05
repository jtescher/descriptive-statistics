require 'descriptive-statistics/central-tendency'
require 'descriptive-statistics/dispersion'
require 'descriptive-statistics/spread'
require 'descriptive-statistics/shape'

class DescriptiveStatistics
  module All
    include CentralTendency
    include Dispersion
    include Shape
    include Spread
  end
end