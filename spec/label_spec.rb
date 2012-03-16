require 'spec_helper'

describe ZebraZpl::Label do

  describe 'constants' do

    it 'PREFIX' do
      ZebraZpl::Label::PREFIX.should == '^XA'
    end

    it 'SUFFIX' do
      ZebraZpl::Label::SUFFIX.should == '^XZ'
    end

  end

  describe '.build' do

    it 'returns a label' do
      l = ZebraZpl::Label.build {}
      l.should be_a(ZebraZpl::Label)
    end

  end

  describe '#default_width=' do

    let(:label) { ZebraZpl::Label.new }

    it 'adds an Bar Code Field Default to the label' do
      label.default_width = 3
      label.data.should include('^BY3')
    end

  end

  describe '#home=' do

    let(:label) { ZebraZpl::Label.new }

    it 'adds a Label Home command to the label' do
      label.home = [5, 10]
      label.data.should include('^LH5,10')
    end

  end

  describe '#orientation=' do

    let(:label) { ZebraZpl::Label.new }

    it 'adds a Field Orientation command to the label' do
      label.orientation = :n
      label.data.should include('^FWN')
    end

  end

  describe '#to_s' do

    let(:label) { ZebraZpl::Label.new }

    its(:to_s) { should =~ /^\^XA/ }
    its(:to_s) { should =~ /\^XZ$/ }

  end

end