def check_and_raise_if_diffs(attrs, safe_attrs)
  diff = attrs.flatten - safe_attrs.flatten
  return if diff.blank?
  results = []
  diff.length.times do |idx|
    next if idx % 2 != 0 
    results << "#{diff[idx]} => #{diff[idx + 1]}"
  end
  raise WhinyAttrAccessibleError.new("You tried to assign the following attributes that are either protected or not accessible: #{results.join(", ")}")
end
