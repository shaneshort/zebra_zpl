require 'spec_helper'

describe ZebraZpl::Field do

  describe 'constants' do

    it 'SUFFIX' do
      ZebraZpl::Field::SUFFIX.should == '^FS'
    end

  end

  its(:to_s) { should =~ /\^FS$/ }

end
