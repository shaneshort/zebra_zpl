# # ^A - Scalable/Bitmapped Font
#
# The ^A command specifies the font to use in a textfield. ^A designates the font for the current ^FD statement or field. The font specified by ^A is used only once for that ^FD entry. If a value for ^A is not specified again, the default ^CF font is used for the next ^FD entry.
#
# ## Format
#
#     ^Afo,h,w
#
# ## Parameters
#
# ### f = font name
#
# - Accepted Values: A through Z, and 0 to 9
# - f is required. If f is omitted it defaults to the last value of the ^CF command.
#
# ### o = field orientation
#
# - Default Value: the last accepted ^FW value or the ^FW default
# - Accepted Values
#   - *N* normal
#   - *R* rotated 90 degrees (clockwise)
#   - *I* inverted 180 degrees
#   - *B* read from bottom up, 270 degrees
#
# ### h = character height (in dots)
#
# - Default Value: last accepted ^CF
# - Accepted Values
#   - Scalable: 10 to 32000
#   - Bitmapped: multiples of height from 1 to 10 times the standard height, in increments of 1
#
# ### w = width (in dots)
#
# - Default Value: last accepted ^CF
# - Accepted Values
#   - Scalable: 10 to 32000
#   - Bitmapped: multiples of width from 1 to 10 times the standard height, in increments of 1
#
# ## Notes
#
# Fonts are built using a matrix that defines standard height-to-width ratios. If you specify only the height or width value standard matrix for that font automatically determines the other value. If the value is not given or a 0 (zero) is entered, the height or width is determined by the standard font matrix.
module ZebraZpl::Commands::Font

  COMMAND = '^A'

  # Builder Usage:
  #
  # ```ruby
  # ZebraZpl::Field.build { font :a }
  # ZebraZpl::Field.build { font :b, :orientation => :n }
  # ZebraZpl::Field.build { font :c, height: 30 }
  # ZebraZpl::Field.build { font :d, height: 15, width: 20 }
  # ZebraZpl::Field.build { font :e, :orientation => :r, height: 15, width: 20 }
  # ```
  #
  # Field Usage:
  #
  # ```ruby
  # f = ZebraZpl::Field.new
  # f.font = :a
  # f.font = :b, :orientation => :n
  # f.font = :c, height: 30
  # f.font = :d, height: 15, width: 20
  # f.font = :e, :orientation => :r, height: 15, width: 20
  # ```
  def font= *args
    name, options = args
    options ||= {}

    params = [options[:height], options[:width]]

    data  = "#{ COMMAND }#{ name }#{ options[:orientation] }".upcase
    data += ",#{ params.join ',' }" if params.any?

    @data << data
  end

end
