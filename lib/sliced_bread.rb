Array.class_eval do
  def top(number)
    if size <= number.to_i
      self
    else
      self[0...number.to_i]
    end
  end

  def bottom(number)
    if number.to_i < 0 or size <= number.to_i
      self
    else
      self[size-number.to_i...size]
    end
  end
end