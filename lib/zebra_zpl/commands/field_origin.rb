module ZebraZpl::Commands::FieldOrigin

  COMMAND = '^FO'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def origin= point
      @data << "#{ COMMAND }#{ point.join ',' }"
    end

  end

end
