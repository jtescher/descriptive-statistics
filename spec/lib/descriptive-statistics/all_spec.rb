require 'spec_helper'

describe DescriptiveStatistics::All do
  it 'should include all stats modules' do
    [DescriptiveStatistics::Spread, DescriptiveStatistics::Shape, DescriptiveStatistics::Dispersion,
     DescriptiveStatistics::CentralTendency].each do |ancestor_module|
      DescriptiveStatistics::All.ancestors.should include(ancestor_module)
    end
  end
end
