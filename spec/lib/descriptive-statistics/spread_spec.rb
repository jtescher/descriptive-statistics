require 'spec_helper'

describe DescriptiveStatistics::Spread do
  describe '#variance' do
    it 'returns the mean squared deviation of the sample (n - 1 denominator)' do
      DescriptiveStatistics.new([1,2,6]).variance.should == 7
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).variance.should be_nil
    end
  end

  describe '#population_variance' do
    it 'returns the mean squared deviation of the sample' do
      DescriptiveStatistics.new([1,2,3,4]).population_variance.should == 1.25
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).population_variance.should be_nil
    end
  end

  describe '#standard_deviation' do
    it 'returns the square root of the variance' do
      DescriptiveStatistics.new([1,2,6]).standard_deviation.should == 2.6457513110645907
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).standard_deviation.should be_nil
    end
  end

  describe '#population_standard_deviation' do
    it 'returns the square root of the population_variance' do
      DescriptiveStatistics.new([1,2,6]).population_standard_deviation.should == 2.160246899469287
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).population_standard_deviation.should be_nil
    end
  end
end
