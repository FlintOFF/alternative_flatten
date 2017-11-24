class Array
  def flatten_a
    # to_s.delete('[]').split(',').map!(&:to_i) #works only with integer

    to_s.delete('[]').split(',').map{ |el|
      el.strip!
      if el.empty?
        nil
      elsif /'|"/ =~ el
        el.delete("\"'")
      else
        el.to_i
      end
    }.compact
  end
end