module ZebraZpl::Commands::PrintRate

  COMMAND = '^PR'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def print_rate= print_speed, slew_speed = nil, backfeed_speed = nil
      rate = print_speed.to_s.upcase
      params = [rate, slew_speed, backfeed_speed].compact
      @data << "#{ COMMAND }#{ params.join ',' }"
    end

  end

end
