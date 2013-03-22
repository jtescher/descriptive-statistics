require 'delegate'
require "descriptive-statistics/all-methods"

module DescriptiveStatistics
  class Stats < SimpleDelegator
    include AllMethods
  end
end