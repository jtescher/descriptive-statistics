class DescriptiveStatistics
  module Spread
    def variance
      return if length < 1
      sum = self.inject(0) {|accumulator, value| accumulator + (value - mean) ** 2 }
      sum / (length.to_f - 1)
    end

    def population_variance
      return if length < 1
      sum = self.inject(0) {|accumulator, value| accumulator + (value - mean) ** 2 }
      sum / length.to_f
    end

    def standard_deviation
      return if length < 2
      Math.sqrt(variance)
    end

    def population_standard_deviation
      return if length < 2
      Math.sqrt(population_variance)
    end
  end
end