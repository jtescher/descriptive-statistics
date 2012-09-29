require "descriptive-statistics/version"
require 'descriptive-statistics/central-tendency'

class DescriptiveStatistics
  extend Forwardable
  include CentralTendency

  def initialize(data)
    @data = data
  end

  def_delegators :@data, :length, :inject, :sort, :each_with_object
end
