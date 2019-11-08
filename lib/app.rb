def reverse_min_max(array)
  return [] if array == nil || array == []  

  arr = array.map(&:clone)
  min_index = arr.index arr.min
  max_index = arr.index arr.max
  arr[min_index], arr[max_index] = arr[max_index], arr[min_index]
  return arr
end


def two_min_elements_indexes(array)
  return [] if array == nil || array == [] 
  return [ 0 ] if array.length < 2

  if array[0] < array[1]
      min1 = 0
      min2 = 1
  else
      min1 = 1
      min2 = 0
  end

  for i in 2..array.length - 1
    if array[i] < array[min1]
      buff = min1
      min1 = i
      if array[buff] < array[min2]
        min2 = buff
      end
    else
      if array[i] < array[min2]
        min2 = i
      end 
    end
  end

  return min1, min2
end
