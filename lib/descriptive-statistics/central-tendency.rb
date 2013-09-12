module DescriptiveStatistics
  module CentralTendency
    def sum(identity = 0, &block)
      if block_given?
        DescriptiveStatistics::Stats.new(map(&block)).sum(identity)
      else
        inject(:+) || identity
      end
    end

    def mean
      return if length < 1
      sum / length.to_f
    end

    def median
      return if length < 1
      sorted = self.sort

      if length % 2 == 0
        (sorted[(length/2) -1 ] + sorted[length / 2]) / 2.0
      else
        sorted[length / 2]
      end
    end

    def mode
      return if length < 1
      frequency_distribution = inject(Hash.new(0)) { |hash, value| hash[value] += 1; hash }
      top_2 = frequency_distribution.sort { |a,b| b[1] <=> a[1] } .take(2)
      if top_2.length == 1
        top_2.first.first # Only one value in distribution, so it's the mode.
      elsif top_2.first.last == top_2.last.last
        nil # Equal frequency, no mode.
      else
        top_2.first.first # Most frequent is mode.
      end
    end
  end
end