module ZebraZpl::Commands::Orientation

  COMMAND = '^FW'

  def orientation= rotation
    @data << "#{ COMMAND }#{ rotation.to_s.upcase }"
  end

end
