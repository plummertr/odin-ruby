def stock_picker(days)
  max = 0
  best_days = [0, 0]
  size = days.size - 1
  days.each_with_index do |day, index|
    index.upto(size) do |subindex|
      if days[subindex] - day > max 
        max = days[subindex] - day
        best_days = [index, subindex]
      end
    end
  end
  best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect