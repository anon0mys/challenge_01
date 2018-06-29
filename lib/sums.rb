class Sums
  def for_loop_sum(list)
    sum = 0
    for i in list do
      sum += i
    end
    sum
  end

  def while_loop_sum(list)
    i = 0
    sum = 0
    while i < list.length
      sum += list[i]
      i += 1
    end
    sum
  end

  def recursive_sum(list, sum = 0)
    value = list.pop
    sum += value
    if list.empty?
      sum
    else
      recursive_sum(list, sum)
    end
  end
end
