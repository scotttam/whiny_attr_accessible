if development_or_test?
  module MongoMapper
    module Plugins
      module Accessible
        protected

        def filter_inaccessible_attrs_with_exception(attrs)
          safe_attrs = filter_inaccessible_attrs_without_exception(attrs)
          check_and_raise_if_diffs(attrs, safe_attrs)
          safe_attrs
        end

        my_alias_method_chain :filter_inaccessible_attrs, :exception
      end
    end
  end
end
