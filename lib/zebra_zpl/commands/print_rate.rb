# # ^PR Print Rate
#
# The ^PR command determines the media and slew speed (feeding a blank label) during printing.
#
# The printer operates with the selected speeds until the setting is reissued or the printer is turned off.
#
# The print speed is application-specific. Because print quality is affected by media, ribbon, printing speeds, and printer operating modes, it is very important to run tests for your applications. Some models go to default print speed when power is turned off.
#
# ## Format
#
#     ^PRp,s,b
#
# ## Parameters
#
# ### p = print speed
#
# - Default Value: A
# - Accepted Values:
#   - A or 2 = 50.8 mm/sec.  ( 2 inches/sec.)
#   - B or 3 = 76.2 mm/sec.  ( 3 inches/sec.)
#   - C or 4 = 101.6 mm/sec. ( 4 inches/sec.)
#   -      5 = 127 mm/sec.   ( 5 inches/sec.)
#   - D or 6 = 152.4 mm/sec. ( 6 inches/sec.)
#   - E or 8 = 203.2 mm/sec. ( 8 inches/sec.)
#   -      9 = 220.5 mm/sec. ( 9 inches/sec.)
#   -     10 = 245 mm/sec.   (10 inches/sec.)
#   -     11 = 269.5 mm/sec. (11 inches/sec.)
#   -     12 = 304.8 mm/sec. (12 inches/sec.)
#
# ### s = slew speed
#
# - Default Value: D
# - Accepted Values:
#   - A or  2 = 50.8 mm/sec.  ( 2 inches/sec.)
#   - B or  3 = 76.2 mm/sec.  ( 3 inches/sec.)
#   - C or  4 = 101.6 mm/sec. ( 4 inches/sec.)
#   -       5 = 127 mm/sec.   ( 5 inches/sec.)
#   - D or  6 = 152.4 mm/sec. ( 6 inches/sec.)
#   - E or  8 = 203.2 mm/sec. ( 8 inches/sec.)
#   -       9 = 220.5 mm/sec. ( 9 inches/sec.)
#   -      10 = 245 mm/sec.   (10 inches/sec.)
#   -      11 = 269.5 mm/sec. (11 inches/sec.)
#   -      12 = 304.8 mm/sec. (12 inches/sec.)
#
# ### b = backfeed speed
#
# - Default Value: A
# - Accepted Values:
#   - A or  2 = 50.8 mm/sec.  ( 2 inches/sec.)
#   - B or  3 = 76.2 mm/sec.  ( 3 inches/sec.)
#   - C or  4 = 101.6 mm/sec. ( 4 inches/sec.)
#   -       5 = 127 mm/sec.   ( 5 inches/sec.)
#   - D or  6 = 152.4 mm/sec. ( 6 inches/sec.)
#   - E or  8 = 203.2 mm/sec. ( 8 inches/sec.)
#   -       9 = 220.5 mm/sec. ( 9 inches/sec.)
#   -      10 = 245 mm/sec.   (10 inches/sec.)
#   -      11 = 269.5 mm/sec. (11 inches/sec.)
#   -      12 = 304.8 mm/sec. (12 inches/sec.)
#
# ## Notes
#
# The speed setting for p, s, and b is dependent on the limitations of the printer. If a particular printer is limited to a rate of 6 ips (inches per second), a value of 12 can be entered but the printer performs only at a 6 ips rate. See your printer’s User Guide for specifics on performance.
module ZebraZpl::Commands::PrintRate

  COMMAND = '^PR'

  # specifies the media and slew speed
  #
  # @overload print_rate= print_speed, slew_speed, backfeed_speed
  #   @param [Integer] print_speed    the speed to print
  #   @param [Integer] slew_speed     the speed to feed blank labels
  #   @param [Integer] backfeed_speed the reverse speed
  #
  # @example using with builder
  #   ZebraZpl::Label.build { print_rate :a }
  #
  # @example setting directly on a label
  #   f = ZebraZpl::Label.new
  #   f.print_rate = :a
  def print_rate= *args
    print_speed, slew_speed, backfeed_speed = [*args]

    print_speed = print_speed.to_s.upcase
    params      = [print_speed, slew_speed, backfeed_speed]

    @data << "#{ COMMAND }#{ params.join ',' }"
  end

end
