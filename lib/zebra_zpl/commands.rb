module ZebraZpl::Commands
end

%w[
  default_width
  home
  orientation
  print_rate
].each { |f| require "zebra_zpl/commands/#{ f }"}
