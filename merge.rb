def merge (arr1, arr2)
i = 0
j = 0
merged_array = Array.new


if arr1.all? {|i| i.is_a?(Integer) } && arr2.all? {|i| i.is_a?(Integer) }

while i < arr1.count
  while j < arr2.count && arr1[i] > arr2[j]
    merged_array << arr2[j]
    j+=1
  end
  merged_array << arr1[i]
  i+=1
end

if j < arr2.count
  merged_array << arr2[j..-1]

merged_array.flatten
end

else
  nil
end

end
 # merge([2,9,13,19],[1,8,17,21,25])
