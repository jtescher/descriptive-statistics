require 'spec_helper'

describe DescriptiveStatistics::AllMethods do
  it 'should include all stats modules' do
    [DescriptiveStatistics::Spread, DescriptiveStatistics::Shape, DescriptiveStatistics::Dispersion,
     DescriptiveStatistics::CentralTendency].each do |ancestor_module|
      DescriptiveStatistics::AllMethods.ancestors.should include(ancestor_module)
    end
  end
end
