require 'spec_helper'

describe ZebraZpl::Field do

  describe 'constants' do

    it 'SUFFIX' do
      ZebraZpl::Field::SUFFIX.should == '^FS'
    end

  end

  describe 'commands' do

    let(:field) { ZebraZpl::Field.new }

    describe '#origin=' do

      it 'adds an Field Origin to the field' do
        field.origin = [46, 2]
        field.data.should include('^FO46,2')
      end

    end

  end

  its(:to_s) { should =~ /\^FS$/ }

end
