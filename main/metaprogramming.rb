class Class

  def attr_accessor_with_history(name1)
    name = name1.to_s

    define_method "#{name}" do
      instance_variable_get("@#{name}")
    end

    define_method "#{name}_history" do 
      instance_variable_get("@#{name}_history") || [nil]
    end

    define_method "#{name}=" do |value|
      res = instance_variable_get("@#{name}_history")
      res ||= [nil]
      res << value
      instance_variable_set("@#{name}_history", res)
      instance_variable_set("@#{name}", value)
    end
  end

end

class Foo
  attr_accessor_with_history :bar
end

p = Foo.new
p.bar = 2
p.bar = 5
p.bar = 8
puts p.bar_history
