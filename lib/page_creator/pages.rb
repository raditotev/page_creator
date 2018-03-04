module PageCreator
  # Creates or calls instances of pages used in tests.
  module Pages
    def self.collect_pages(subclass)
      method_name = subclass.to_s.demodulize.underscore
      send(:define_method, method_name) do
        instance_variable_set("@#{method_name}",
          instance_variable_get("@#{method_name}") || subclass.new)
      end
    end
  end
end

# Include available methods
include PageCreator::Pages
