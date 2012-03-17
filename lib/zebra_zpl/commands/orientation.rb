# ### ^FW Field Orientation
#
# The ^FW command sets the default orientation for all command fields that have an orientation (rotation) parameter. Fields can be rotated 0, 90, 180, or 270 degrees clockwise by using this command.
#
# The ^FW command affects only fields that follow it. Once you have issued a ^FW command, the setting is retained until you turn off the printer or send a new ^FW command to the printer.
#
# ## Format
#
#     ^FWr
#
# ## Parameters
#
# ### r = rotate field
#
# - Initial Value at Power-up: **N**
#
# - Accepted Values:
#   - **N** = normal
#   - **R** = rotated 90 degrees
#   - **I** = inverted 180 degrees
#   - **B** = bottom-up 270 degrees, read from bottom up
module ZebraZpl::Commands::Orientation

  COMMAND = '^FW'

  # specifies the default orientation for all command fields
  #
  # @param orientation [String] the direction identifier
  #
  # @example using with builder
  #   ZebraZpl::Label.build { orientation :r }
  #
  # @example setting directly on a label
  #   f = ZebraZpl::Label.new
  #   f.orientation = :r
  def orientation= rotation
    @data << "#{ COMMAND }#{ rotation.to_s.upcase }"
  end

end
