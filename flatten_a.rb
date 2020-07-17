class Array
  def flatten_a
    out = []

    arr.each do |el|
      if el.kind_of?(Array)
        out = out + flatten_a(el)
      else
        out << el
      end
    end

    out
  end
end
