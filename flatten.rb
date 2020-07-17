def flatten(arr)
  out = []

  arr.each do |el|
    out += el.kind_of?(Array) ? flatten(el) : [el]
  end

  out
end
