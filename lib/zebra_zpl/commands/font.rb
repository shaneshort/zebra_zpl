module ZebraZpl::Commands::Font

  COMMAND = '^A'

  def self.included base
    base.send :include, InstanceMethods
  end

  module InstanceMethods

    def font= *args
      name, options = args
      options ||= {}

      params = [options[:height], options[:width]]

      data  = "#{ COMMAND }#{ name }#{ options[:orientation] }".upcase
      data += ",#{ params.join ',' }" if params.any?

      @data << data
    end

  end

end
