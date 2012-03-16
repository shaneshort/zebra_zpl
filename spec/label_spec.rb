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

  describe '#to_s' do

    let(:label) { ZebraZpl::Label.new }

    its(:to_s) { should =~ /^\^XA/ }
    its(:to_s) { should =~ /\^XZ$/ }

  end

end