arr = [34, -345, -1, 100, -400, 9]

def find_smallest_int(arr)
  smallest_int = arr[0]
  arr.each do |num|
    if num < smallest_int
      smallest_int = num
    end
  end
  smallest_int
end

puts find_smallest_int(arr)