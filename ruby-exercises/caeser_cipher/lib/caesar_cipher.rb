def caesar_cipher(words, shift) 
  words.split(" ")
    .map do |word|
      word.split("")
      .map do |char| 
        base = 65 if char[/[A-Z]/]
        base = 97 if char[/[a-z]/]

        base ? ((char.ord - base + shift) % 26 + base).chr : char 
      end #char map
      .join "" 
    end #word map
    .join " " 
end
