require 'spec_helper'

describe DescriptiveStatistics::CentralTendency do
  describe '#sum' do
    it 'returns the amount attained by adding all numbers in the array' do
      DescriptiveStatistics::Stats.new([1,2,6]).sum.should == 9
    end

    it 'allows a block to be passed' do
      DescriptiveStatistics::Stats.new([1,2,6]).sum{ |x| x * 2 }.should == 18
    end

    it 'returns 0 if empty' do
      DescriptiveStatistics::Stats.new([]).sum.should == 0
    end
  end

  describe '#mean' do
    it 'returns the sum of the values over the count of the values' do
      DescriptiveStatistics::Stats.new([1,2,6]).mean.should == 3
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).mean.should be_nil
    end
  end

  describe '#median' do
    it 'returns the value lying at the midpoint of the array' do
      DescriptiveStatistics::Stats.new([1,2,6]).median.should == 2
    end

    it 'returns the mean of the two midpoint values if the array length is even' do
      DescriptiveStatistics::Stats.new([1,2,3,6]).median.should == 2.5
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).median.should be_nil
    end
  end

  describe '#mode' do
    it 'returns the most frequent value' do
      DescriptiveStatistics::Stats.new([1,1,2,46]).mode.should == 1
    end

    it 'returns nil if there is no most frequent value' do
      DescriptiveStatistics::Stats.new([1,2,3]).mode.should be_nil
    end

    it 'returns the first value if there is only one' do
      DescriptiveStatistics::Stats.new([3.5]).mode.should == 3.5
    end

    it 'returns nil if empty' do
      DescriptiveStatistics::Stats.new([]).mode.should be_nil
    end
  end
end
