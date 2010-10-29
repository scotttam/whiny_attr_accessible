if development_or_test?
  module MongoMapper
    module Plugins
      module Protected
        module InstanceMethods
          include PrintDiffs
          
          protected

          def filter_protected_attrs_with_exception(attrs)
            safe_attrs = filter_protected_attrs_without_exception(attrs)
            check_and_raise_if_diffs(attrs, safe_attrs)
            safe_attrs
          end
        
          my_alias_method_chain :filter_protected_attrs, :exception
        end
      end
    end
  end
end