require 'spec_helper'

describe ZebraZpl::LabelBuilder do

  it 'returns a label' do
    ZebraZpl::Label.build {}.should be_a(ZebraZpl::Label)
  end
  end

end
