module ZebraZpl::Commands::Home

  COMMAND = '^LH'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def home= point
      @data << "#{ COMMAND }#{ point.join ',' }"
    end

  end

end
