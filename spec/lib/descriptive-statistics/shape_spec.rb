require 'spec_helper'

describe DescriptiveStatistics::Shape do
  describe '#skewness' do
    it 'returns the measure of skewness of the data as close to 0 when not skewed' do
      DescriptiveStatistics.new([1,3,5,3,1]).skewness.should == 0.30734449954312965
    end

    it 'returns the measure of skewness of the data as high when skewed' do
      DescriptiveStatistics.new([50,10,1,1,1]).skewness.should == 1.2374536958450908
    end

    it 'returns 0 if only one element' do
      DescriptiveStatistics.new([1]).skewness.should == 0
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).skewness.should be_nil
    end
  end

  describe '#kurtosis' do
    it 'returns the measure of kurtosis of the data as close to 0 when not skewed' do
      DescriptiveStatistics.new([1,3,5,3,1]).kurtosis.should == 1.477551020408163
    end

    it 'returns the measure of skewness of the data as high when skewed' do
      DescriptiveStatistics.new([50,10,1,1,1]).kurtosis.should == 2.45740139974872
    end

    it 'returns 0 if only one element' do
      DescriptiveStatistics.new([1]).kurtosis.should == 0
    end

    it 'returns nil if empty' do
      DescriptiveStatistics.new([]).kurtosis.should be_nil
    end
  end
end
