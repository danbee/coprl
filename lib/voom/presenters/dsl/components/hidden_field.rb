module Voom
  module Presenters
    module DSL
      module Components
        class HiddenField < Base

          def initialize(**attribs_, &block)
            super(type: :hidden_field, **attribs_, &block)
            expand!
          end

          def value(value=nil)
            return @value if frozen?
            @value = value
          end
        end
      end
    end
  end
end

