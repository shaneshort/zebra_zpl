module ZebraZpl::Commands
end

%w[
  default_width
  field_origin
  font
  home
  orientation
  print_rate
  quantity
].each { |f| require "zebra_zpl/commands/#{ f }"}
