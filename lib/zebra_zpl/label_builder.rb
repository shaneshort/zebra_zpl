class ZebraZpl::LabelBuilder

  attr_accessor :label

  def initialize
    @label = ZebraZpl::Label.new
  end

  def method_missing name, *args
    return super unless label.respond_to? "#{ name }="

    self.class.send :define_method, "#{ name }" do |*args|
      label.send "#{ name }=", *args
    end

    send "#{ name }", *args
  end

end
