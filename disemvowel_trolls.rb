def disemvowel_trolls(string)
  new_array = []
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

  string.each_char do |char|
    new_array << char unless vowels.include?(char)
  end

  puts new_array.join
end

disemvowel_trolls("This website is for losers LOL!")