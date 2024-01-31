def is_isogram(word)
  checked_letter=[]
  word.downcase.each_char do |letter|
    if checked_letter.include?(letter)
      puts false
    else
    checked_letter.push(letter)
  end
  puts true
end

is_isogram("Dermatoglyphics")
is_isogram("aba")
is_isogram("moOse")
