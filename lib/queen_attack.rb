class Array
  def queen_attack?(target)
    if self[1] == target[1]
      return true
    elsif self[0] == target[0]
      return true
    elsif (self[0] - target[0]).abs == (self[1] - target[1]).abs
      return true
    else
      return false
    end
  end
end
