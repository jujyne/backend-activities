def disemvowel_trolls(string)
  new_string = ''
  string.each_char do |char|
    new_string << char unless 'aeiouAEIOU'.include?(char)
  end

  puts new_string
end

disemvowel_trolls("This website is for losers LOL!")