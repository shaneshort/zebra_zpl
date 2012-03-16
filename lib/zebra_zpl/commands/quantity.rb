module ZebraZpl::Commands::Quantity

  COMMAND = '^PQ'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def quantity= quantity, pause = nil, replicates = nil, override = nil
      params = [quantity, pause, replicates, override].compact
      @data << "#{ COMMAND }#{ params.join ',' }"
    end

  end

end
