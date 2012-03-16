module ZebraZpl::Commands::DefaultWidth

  COMMAND = '^BY'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def default_width= width, ratio = nil, height = nil
      params = [width, ratio, height].compact
      @data << "#{ COMMAND }#{ params.join ',' }"
    end

  end

end
