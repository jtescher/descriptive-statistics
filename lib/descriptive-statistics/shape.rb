module DescriptiveStatistics
  module Shape

    def skewness
      return if length == 0
      return 0 if length == 1
      sum_cubed_deviation / ((length - 1) * cubed_standard_deviation.to_f)
    end

    def kurtosis
      return if length == 0
      return 0 if length == 1
      sum_quarted_deviation / ((length - 1) * quarted_standard_deviation.to_f)
    end

  private

    def sum_cubed_deviation
      precalculated_mean = mean
      inject(0) {|sum, value| sum + (value - precalculated_mean) ** 3}
    end

    def cubed_standard_deviation
      standard_deviation ** 3
    end

    def sum_quarted_deviation
      precalculated_mean = mean
      inject(0) {|sum, value| sum + (value - precalculated_mean) ** 4}
    end

    def quarted_standard_deviation
      standard_deviation ** 4
    end

  end
end
