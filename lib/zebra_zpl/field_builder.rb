class ZebraZpl::FieldBuilder

  attr_accessor :field

  def initialize
    @field = ZebraZpl::Field.new
  end

  def method_missing name, *args
    return super unless field.respond_to? "#{ name }="

    self.class.send :define_method, "#{ name }" do |*args|
      field.send "#{ name }=", *args
    end

    send "#{ name }", *args
  end

end
