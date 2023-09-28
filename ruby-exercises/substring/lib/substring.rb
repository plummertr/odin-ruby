def substring(input_string, dictionary)
  matches = Hash.new(0)

  dictionary.each do |substr| 
    count = input_string.scan(/#{Regexp.escape substr}/i).size 
    matches[substr] = count unless count == 0
  end

  matches
end