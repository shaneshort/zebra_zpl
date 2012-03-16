module ZebraZpl::Commands
end

%w[
  default_width
  home
  orientation
  print_rate
  quantity
].each { |f| require "zebra_zpl/commands/#{ f }"}
