# ### ^BY - Bar Code Field Default
#
# The ^BY command is used to change the default values for the module width (in dots), the wide bar to narrow bar width ratio, and the bar code height (in dots). It can be used as often as necessary within a label format.
#
# ## Format
#
#     ^BYw,r,h
#
# ## Parameters
#
# ### w = module width (in dots)
# - Initial Value at power-up: 2
# - Accepted Values: 1 to 10
#
# ### r = wide bar to narrow bar width ratio
# - Default Value: 3.0
# - Accepted Values: 2.0 to 3.0, in 0.1 increments
# - This parameter has no effect on fixed-ratio bar codes.
#
# ### h = bar code height (in dots)
#
# ## Notes
#
# For parameter r, the actual ratio generated is a function of the number of dots in parameter w, module width.
#
# Once a ^BY command is entered into a label format ,it stays in effect until another ^BY command is encountered.
module ZebraZpl::Commands::DefaultWidth

  COMMAND = '^BY'

  # specifies default values for the module width
  #
  # @overload default_width= w, r, h
  #   @param [Integer] w the module width (in dots)
  #   @param [Integer] r the wide bar to narrow bar width ratio
  #   @param [Integer] h the bar code height (in dots)
  #
  # @example using with builder
  #   ZebraZpl::Label.build { default_width 3, 2, 10 }
  #
  # @example setting directly on a field
  #   f.default_width = 3, 2, 10
  def default_width= *args
    @data << "#{ COMMAND }#{ [*args].join ',' }"
  end

end
