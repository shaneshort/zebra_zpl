module ZebraZpl::Commands::PrintRate

  COMMAND = '^PR'

  def print_rate= *args
    print_speed, slew_speed, backfeed_speed = [*args]

    print_speed = print_speed.to_s.upcase
    params      = [print_speed, slew_speed, backfeed_speed]

    @data << "#{ COMMAND }#{ params.join ',' }"
  end

end
