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

  def middle(count)
    array_count = self.count
    selection_indices = Array.new

    if array_count.even?
      # even array
      selection_indices.push(array_count/2-1, array_count/2)
    else
      # odd array
      selection_indices.push(array_count/2)
    end
    count_adjust = count - selection_indices.count
    left_buffer = count_adjust % 2
    left_limit = selection_indices.first - left_buffer - count_adjust/2
    right_limit = selection_indices.last + count_adjust/2

    case count
    when count < selection_indices.count
      self[left_limit]
    else
      self[left_limit..right_limit]
    end
  end

  def delete_if_contains(substring)
    self.delete_if{|el| el.match(substring)}
  end
end