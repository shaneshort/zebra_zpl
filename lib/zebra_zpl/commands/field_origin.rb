# ### ^FO - Field Origin
#
# The ^FO command sets a field origin, relative to the label home (^LH) position. ^FO sets the upper-left corner of the field area by defining points along the x-axis and y-axis independent of the rotation.
#
# ## Format
#
#     ^FOx,y
#
# ## Parameters
#
# ### x = x-axis location (in dots)
#
# - Default Value: 0
# - Accepted Values: 0 to 32000
#
# ###y = y-axis location (in dots)
#
# - Default Value: 0
# - Accepted Values: 0 to 32000
#
# ## Notes
#
# If the value entered for the x or y parameter is too high, it could position
# the field origin completely off the label.
module ZebraZpl::Commands::FieldOrigin

  COMMAND = '^FO'

  # specifies a field origin, relative to the label home
  #
  # @overload origin= x, y
  #   @param [Integer] x the x position (in dots)
  #   @param [Integer] y the y position (in dots)
  #
  # @example using with builder
  #   ZebraZpl::Label.build { origin 3, 2 }
  #
  # @example setting directly on a field
  #   f = ZebraZpl::Label.new
  #   f.origin = 3, 2
  def origin= *args
    @data << "#{ COMMAND }#{ [*args].join ',' }"
  end

end
