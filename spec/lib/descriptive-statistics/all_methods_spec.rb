require 'spec_helper'

describe DescriptiveStatistics::AllMethods do
  it 'should include all stats modules' do
    DescriptiveStatistics::AllMethods.ancestors.should == [
      DescriptiveStatistics::AllMethods,
      DescriptiveStatistics::Spread,
      DescriptiveStatistics::Shape,
      DescriptiveStatistics::Dispersion,
      DescriptiveStatistics::CentralTendency
    ]
  end
end
