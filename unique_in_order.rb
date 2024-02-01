
def unique_in_order(input)
  unique_items_in_order= []
  unique_item = nil
  array = input.is_a?(Array)? input : input.chars

  array.each do |item|
    if unique_item != item
      unique_items_in_order.push(item)
      unique_item = item
    end
  end
  puts unique_items_in_order
  puts "\n"
end

unique_in_order('AAAABBBBCCDAABB')
unique_in_order('ABBCcAD')
unique_in_order([1,2,2,3,3])