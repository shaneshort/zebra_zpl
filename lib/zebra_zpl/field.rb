class ZebraZpl::Field

  include ZebraZpl::Commands::FieldOrigin

  attr_accessor :data

  def initialize
    @data = []
  end

  SUFFIX = '^FS'

  # def self.build &block
  #   builder = ZebraZpl::FieldBuilder.new
  #   builder.instance_eval &block
  #   builder.field
  # end

  def to_s
    "#{ data.join '' }#{ SUFFIX }"
  end

end
