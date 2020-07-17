class Array
  def flatten_a
    out = []

    each do |el|
      out += el.kind_of?(Array) ? el.flatten_a : [el]
    end

    out
  end
end