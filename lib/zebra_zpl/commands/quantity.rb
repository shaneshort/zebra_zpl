# # ^PQ - Print Quantity
#
# The ^PQ command gives control over several printing operations. It controls the number of labels to print, the number of labels printed before printer pauses, and the number of replications of each serial number.
#
# ## Format
#
#     ^PQq,p,r,o
#
# ## Parameters
#
# ### q = total quantity of labels to print
#
# - Default Value: 1
# - Accepted Value: 1 to 99,999,999
#
# ### p = pause and cut value (labels between pauses)
#
# - Default Value: 0 (no pause)
# - Accepted Value: 1 to 99,999,999
#
# ### r = replicates of each serial number
#
# - Default Value: 0 (no replicates)
# - Accepted Value: 0 to 99,999,999 replicates 
#
# ### o = override pause count
#
# - Accepted Values:
#   - N = no
#   - Y = yes Default Value: N
#
# ## Notes
#
# If the o parameter is set to Y, the printer cuts but does not pause, and the printer does not pause after every group count of labels has been printed. With the o parameter set to N (default), the printer pauses after every group count of labels has been printed.
module ZebraZpl::Commands::Quantity

  COMMAND = '^PQ'

  # Builder Usage:
  #
  # ```ruby
  # ZebraZpl::Label.build { quantity 2 }
  # ```
  #
  # Label Usage:
  #
  # ```ruby
  # f = ZebraZpl::Label.new
  # f.quantity = 2
  # ```
  def quantity= *args
    @data << "#{ COMMAND }#{ args.join ',' }"
  end

end
