require 'spec_helper'

describe DescriptiveStatistics do
  it 'should allow hacky monkey patches to add methods to structures like arrays' do
    module Enumerable
      include DescriptiveStatistics::All

      # Warning: hacky evil meta programming. Required to have classes that include array get the methods too.
      DescriptiveStatistics::All.instance_methods.each do |m|
        define_method(m, DescriptiveStatistics::All.instance_method(m))
      end
    end

    [1,2,3].mean.should == 2
  end
end
