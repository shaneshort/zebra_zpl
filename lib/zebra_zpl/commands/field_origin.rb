# ### ^FO - Field Origin
#
# The ^FO command sets a field origin, relative to the label home (^LH) position. ^FO sets the upper-left corner of the field area by defining points along the x-axis and y-axis independent of the rotation.
#
# ## Format
#
#     ^FOx,y
#
# ## Notes
#
# If the value entered for the x or y parameter is too high, it could position
# the field origin completely off the label.
module ZebraZpl::Commands::FieldOrigin

  COMMAND = '^FO'

  # Builder Usage:
  #
  # ```ruby
  # ZebraZpl::Label.build { origin 3, 2 }
  # ```
  #
  # Field Usage:
  #
  # ```ruby
  # f = ZebraZpl::Label.new
  # f.origin = 3, 2
  # ```
  def origin= *args
    @data << "#{ COMMAND }#{ [*args].join ',' }"
  end

end
