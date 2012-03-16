module ZebraZpl::Commands::Orientation

  COMMAND = '^FW'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def orientation= rotation
      @data << "#{ COMMAND }#{ rotation.to_s.upcase }"
    end

  end

end
