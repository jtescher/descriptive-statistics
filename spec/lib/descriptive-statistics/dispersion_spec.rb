require 'spec_helper'

describe DescriptiveStatistics::Dispersion do
  describe '#range' do
    it 'returns the mean squared deviation of the sample (n - 1 denominator)' do
      DescriptiveStatistics::Stats.new([1,2,6]).range.should == 5
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).range.should be_nil
    end
  end

  describe '#min' do
    it 'delegates to array' do
      DescriptiveStatistics::Stats.new([1,2,6]).min.should == 1
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).min.should be_nil
    end
  end

  describe '#max' do
    it 'delegates to array' do
      DescriptiveStatistics::Stats.new([1,2,6]).max.should == 6
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).max.should be_nil
    end
  end

  describe '#percentile_from_value' do
    it 'returns the precise percentile of each value' do
      data = [95.1772, 95.1567, 95.1937, 95.1959, 95.1442, 95.061, 95.1591, 95.1195,95.1065, 95.0925, 95.199, 95.1682]
      percentiles = [0,9,17,25,34,42,50,59,67,75,84,92]
      stats = DescriptiveStatistics::Stats.new(data)
      data.sort.each_with_index do |datum, i|
        stats.percentile_from_value(datum).should == percentiles[i]
      end
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).percentile_from_value(1).should be_nil
    end
  end

  describe '#value_from_percentile' do
    it 'returns the precise percentile of each value' do
      data = [95.1772, 95.1567, 95.1937, 95.1959, 95.1442, 95.061, 95.1591, 95.1195,95.1065, 95.0925, 95.199, 95.1682]
      percentiles = [0,10,20,30,40,50,60,70,80,90]
      values = [95.061,95.1065,95.1195,95.1442,95.1567,95.1591,95.1772,95.1937,95.1959,95.199]
      stats = DescriptiveStatistics::Stats.new(data)
      percentiles.sort.each_with_index do |percentile, i|
        stats.value_from_percentile(percentile).should == values[i]
      end
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).value_from_percentile(1).should be_nil
    end
  end
end
