class ZebraZpl::Label

  PREFIX = '^XA'
  SUFFIX = '^XZ'

  def self.build &block
    builder = ZebraZpl::LabelBuilder.new
    builder.instance_eval &block
    builder.label
  end

  def to_s
    "#{ PREFIX }#{ SUFFIX }"
  end

end
