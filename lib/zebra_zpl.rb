module ZebraZpl
end

require 'zebra_zpl/commands'

%w[ field label ].each do |lib|
  require "zebra_zpl/#{ lib }"
  require "zebra_zpl/#{ lib }_builder"
end
