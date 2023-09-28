def bubble_sort(list)
  last = list.size - 1

  while last 
    swapped = false
    1.upto last do |cursor|
      if list[cursor - 1] > list[cursor]
        list[cursor - 1], list[cursor] = list[cursor], list[cursor - 1]
        swapped = true
      end
    end
    last = last - 1
    break unless swapped
  end
  list
end

puts bubble_sort([4,3,78,2,0,2]).inspect