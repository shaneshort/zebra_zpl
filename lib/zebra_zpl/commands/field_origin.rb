module ZebraZpl::Commands::FieldOrigin

  COMMAND = '^FO'

  def origin= *args
    @data << "#{ COMMAND }#{ [*args].join ',' }"
  end

end
