def development_or_test?
  return true unless defined?(Rails)
  Rails.env.development? || Rails.env.test?
end

def my_alias_method_chain(original, aliased)
  alias_method "#{original}_without_#{aliased}", original
  alias_method original, "#{original}_with_#{aliased}"
end
