require 'spec_helper'

describe DescriptiveStatistics do
  it 'should allow hacky monkey patches to add methods to structures like arrays' do
    if RUBY_VERSION == '1.9.3' and RUBY_ENGINE == 'ruby' # Ignore older versions of ruby and Rubinius
      module Enumerable
        include DescriptiveStatistics::AllMethods

        # Warning: hacky evil meta programming. Required to have classes that include array get the methods too.
        DescriptiveStatistics.instance_methods.each do |m|
          define_method(m, DescriptiveStatistics::AllMethods.instance_method(m))
        end
      end

      [1,2,3].mean.should == 2
    end
  end
end
