module ZebraZpl::Commands::Home

  COMMAND = '^LH'

  def home= *args
    @data << "#{ COMMAND }#{ [*args].join ',' }"
  end

end
