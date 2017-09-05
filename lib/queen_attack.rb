class Array
  def queen_attack?(target)
    if self[1] == target[1]
      return true
    else
      return false
    end
  end
end
