def centuryFromYear(year)
  century = year / 100
  if (year % 100) > 0
    puts century + 1
  else
    puts century
  end
end

centuryFromYear(1705)
centuryFromYear(1900)
centuryFromYear(1601)
centuryFromYear(2000)
