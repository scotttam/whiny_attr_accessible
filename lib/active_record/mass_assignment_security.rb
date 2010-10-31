module ActiveModel
  module MassAssignmentSecurity
      
    protected
    
    def sanitize_for_mass_assignment_with_exception(attributes)
      safe_attrs = sanitize_for_mass_assignment_without_exception(attributes)
      check_and_raise_if_diffs(attributes, safe_attrs)
      safe_attrs
    end
    alias_method_chain :sanitize_for_mass_assignment, :exception
  end
end
      