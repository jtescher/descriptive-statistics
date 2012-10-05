require 'forwardable'
require "descriptive-statistics/version"
require 'descriptive-statistics/all-methods'

class DescriptiveStatistics
  extend Forwardable
  include DescriptiveStatistics::AllMethods

  def initialize(data)
    @data = data
  end

  def_delegators :@data, *(Array.instance_methods - [:object_id, :__send__])
end
