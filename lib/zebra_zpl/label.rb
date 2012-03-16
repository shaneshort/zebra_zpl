class ZebraZpl::Label

  attr_accessor :data

  def initialize
    @data = []
  end

  PREFIX = '^XA'
  SUFFIX = '^XZ'

  def self.build &block
    builder = ZebraZpl::LabelBuilder.new
    builder.instance_eval &block
    builder.label
  end

  def to_s
    "#{ PREFIX }#{ data.join '' }#{ SUFFIX }"
  end

end
