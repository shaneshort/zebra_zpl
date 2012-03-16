require 'spec_helper'

describe ZebraZpl::LabelBuilder do

  it 'returns a label' do
    ZebraZpl::Label.build {}.should be_a(ZebraZpl::Label)
  end

  describe '#default_width' do

    it 'adds an Bar Code Field Default to the label' do
      ZebraZpl::Label.build { default_width 3 }.to_s.should =~ /\^BY3/
    end

  end

  describe '#home' do

    it 'adds a Label Home command to the label' do
      ZebraZpl::Label.build { home [5, 10] }.to_s.should =~ /\^LH5,10/
    end

  end

  describe '#orientation' do

    it 'adds a Field Orientation command to the label' do
      ZebraZpl::Label.build { orientation :n }.to_s.should =~ /\^FWN/
    end

  end

  describe '#print_rate' do

    it 'adds an Bar Code Field Default to the label' do
      ZebraZpl::Label.build { print_rate :a }.to_s.should =~ /\^PRA/
    end

  end

  describe '#quantity' do

    it 'adds an Bar Code Field Default to the label' do
      ZebraZpl::Label.build { quantity 4 }.to_s.should =~ /\^PQ4/
    end

  end

end
