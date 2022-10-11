module Coprl
  module Presenters
    module DSL
      module Components
        class Input < Base
          include Mixins::Tooltips

          attr_reader :name,
                      :dirtyable,
                      :disabled,
                      :max_length

          def initialize(**attribs_, &block)
            super(**attribs_, &block)
            @name = attribs.delete(:name)
            @dirtyable = attribs.delete(:dirtyable) { true }
            @disabled = attribs.delete(:disabled) { false }
            @max_length = attribs.delete(:max_length)
          end

          # If present this error message will be displayed in place of the validation message produced by the
          # underlying component.
          def validation_error(error=nil)
            return @validation_error if locked?
            @validation_error = error
          end

        end
      end
    end
  end
end
