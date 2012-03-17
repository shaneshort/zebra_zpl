# # ^LH - Label Home
#
# The ^LH command sets the label home position. The default home position of a label is the upper-left corner (position 0, 0 along the x and y axis). This is the axis reference point for labels. Any area below and to the right of this point is available for printing. The ^LH command changes this reference point. For instance, when working with preprinted labels, use this command to move the reference point below the preprinted area.
#
# This command affects only fields that come after it. It is recommended to use ^LH as one of the first commands in the label format.
#
# ## Format
#
#     ^LHx,y
#
# ## Parameters
#
# ### x = x-axis position (in dots)
# - Initial Value at Power-up: 0 or last permanently saved value
# - Accepted Values: 0 to 32000
#
# ### y = y-axis position (in dots)
# - Initial Value at Power-up: 0 or last permanently saved value
# - Accepted Values: 0 to 32000
#
# ## Notes
#
# Depending on the printhead used in your printer, use one of these when figuring the values for x and y:
#
# - 6    dots = 1 mm, 152 dots = 1 inch
# - 8    dots = 1 mm, 203 dots = 1 inch
# - 11.8 dots = 1 mm, 300 dots = 1 inch
# - 24   dots = 1 mm, 608 dots = 1 inch
#
# To be compatible with existing printers, this command must come before the first ^FS (Field Separator) command. Once you have issued an ^LH command, the setting is retained until you turn off the printer or send a new ^LH command to the printer.
module ZebraZpl::Commands::Home

  COMMAND = '^LH'

  # specifies the label home position
  #
  # @overload home= x, y
  #   @param [Integer] x the x position (in dots)
  #   @param [Integer] y the y position (in dots)
  #
  # @example using with builder
  #   ZebraZpl::Label.build { home 3, 2 }
  #
  # @example setting directly on a label
  #   f = ZebraZpl::Label.new
  #   f.home = 3, 2
  def home= *args
    @data << "#{ COMMAND }#{ [*args].join ',' }"
  end

end
