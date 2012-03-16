require 'spec_helper'

describe ZebraZpl::FieldBuilder do

  it 'returns a field' do
    ZebraZpl::Field.build {}.should be_a(ZebraZpl::Field)
  end

  describe '#default_width' do

    it 'adds an Field Origin to the field' do
      ZebraZpl::Field.build { origin [46, 2] }.to_s.should =~ /\^FO46,2/
    end

  end

end
