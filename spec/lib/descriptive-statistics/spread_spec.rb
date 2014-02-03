require 'spec_helper'

describe DescriptiveStatistics::Spread do
  describe '#variance' do
    it 'returns the mean squared deviation of the sample (n - 1 denominator)' do
      DescriptiveStatistics::Stats.new([1,2,6]).variance.should == 7
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).variance.should be_nil
    end
  end

  describe '#population_variance' do
    it 'returns the mean squared deviation of the sample' do
      DescriptiveStatistics::Stats.new([1,2,3,4]).population_variance.should == 1.25
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).population_variance.should be_nil
    end
  end

  describe '#standard_deviation' do
    it 'returns the square root of the variance' do
      DescriptiveStatistics::Stats.new([1,2,6]).standard_deviation.should == 2.6457513110645907
    end

    it 'returns nil for single element arrays' do
      DescriptiveStatistics::Stats.new([1]).standard_deviation.should be_nil
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).standard_deviation.should be_nil
    end
  end

  describe '#relative_standard_deviation' do
    it 'returns 0 for constant values' do
      DescriptiveStatistics::Stats.new([100, 100, 100]).relative_standard_deviation.should == 0
    end

    it 'returns the population_standard_deviation divided by the mean * 100' do
      DescriptiveStatistics::Stats.new([90, 100, 110]).relative_standard_deviation.should be_within(0.01).of(8.16)
      DescriptiveStatistics::Stats.new([1, 5, 6, 8, 10, 40, 65, 88]).relative_standard_deviation.should be_within(0.01).of(110.41)
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).relative_standard_deviation.should be_nil
    end
  end

  describe '#population_standard_deviation' do
    it 'returns the square root of the population_variance' do
      DescriptiveStatistics::Stats.new([1,2,6]).population_standard_deviation.should == 2.160246899469287
    end

    it 'returns 0 for single element arrays' do
      DescriptiveStatistics::Stats.new([1]).population_standard_deviation.should == 0
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).population_standard_deviation.should be_nil
    end
  end
end
