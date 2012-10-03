require "descriptive-statistics/version"
require 'descriptive-statistics/central-tendency'
require 'descriptive-statistics/dispersion'
require 'descriptive-statistics/spread'
require 'descriptive-statistics/shape'

class DescriptiveStatistics
  extend Forwardable
  include CentralTendency
  include Dispersion
  include Spread
  include Shape

  def initialize(data)
    @data = data
  end

  def_delegators :@data, *(Array.instance_methods - [:object_id, :__send__])
end
