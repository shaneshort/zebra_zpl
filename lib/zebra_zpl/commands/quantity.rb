module ZebraZpl::Commands::Quantity

  COMMAND = '^PQ'

  def quantity= *args
    @data << "#{ COMMAND }#{ args.join ',' }"
  end

end
