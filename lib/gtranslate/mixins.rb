module Google
  module Translate
    
    # Extends String to add to_* and *_to_*
    module StringMixin
      def method_missing(method, *args)
        if method.to_s[/^((?:\w+)?to_\w+)$/]
          Google::Tr.send($1.to_sym, self)
        else
          super
        end
      end
    end
    
    # Extends array to add to_* and *_to_*
    module ArrayMixin
      def method_missing(method, *args)
        if method.to_s[/^((?:\w+)?to_\w+)$/]
          self.map do |element|
            if element.is_a?(Array)
              element.send($1)
            else
              Google::Tr.send($1.downcase.to_sym, element)
            end
          end
        else
          super
        end
      end
    end

  end
end

String.send(:include, Google::Translate::StringMixin)
Array.send(:include, Google::Translate::ArrayMixin)
