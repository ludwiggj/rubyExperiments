class CssBlock
  attr_reader :selector, :properties

  def initialize(selector, properties = {})
    @selector = selector.dup.freeze
    @properties = properties.dup.freeze
  end

  def set(key, value = nil)
    new_properties = if key.is_a?(Hash)
      key
    elsif !value.nil?
      {
        key => value
      }
    else
      raise "Either provide a Hash of values, or a key and value."
    end

    self.class.new(self.selector, self.properties.merge(new_properties))
  end

  def to_s
    serialised_properties = self.properties.inject([]) do |acc, (k, v)|
      acc + ["#{k}: #{v}"]
    end

    "#{self.selector} { #{serialised_properties.join("; ") } }"
  end

  # => "#some_id .class a { color: #000; text-decoration: underline }"
  css = CssBlock.new("#some_id .class a").set("color", "#FFF").set({ "color" => "#000", "text-decoration" => "underline"})
  puts("css=#{css}")
end
