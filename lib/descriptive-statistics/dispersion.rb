module DescriptiveStatistics
  module Dispersion
    def range
      return if length < 1
      sorted = sort
      sorted.last - sorted.first
    end

    def percentile_from_value(value)
      return if length < 1
      (sort.index(value) / length.to_f * 100).ceil
    end

    def value_from_percentile(percentile)
      return if length < 1
      value_index = (percentile.to_f / 100 * length).ceil
      sort[value_index]
    end
  end
end