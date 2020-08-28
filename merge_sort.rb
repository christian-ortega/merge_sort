def merge_sort(array)
  return array if array.length < 2
  merge(merge_sort(array[0..((array.length / 2) - 1)]), 
          merge_sort(array[(array.length / 2)..(array.length - 1)]))
end

def merge(arr1, arr2)
  i = 0
  j = 0
  result = []

  until i == arr1.length || j == arr2.length do
    if arr1[i] <= arr2[j]
      result.push(arr1[i])
      i += 1
    else
      result.push(arr2[j])
      j += 1
    end
  end

  until i >= arr1.length do
    result.push(arr1[i])
      i += 1
  end
  until j >= arr2.length do
    result.push(arr2[j])
    j += 1
  end

  result
end

def random_array(size, limit)
  result = []
  size.times do
    result.push(rand limit)
  end
  result
end

sample_array = [7, 1, 3, 2, 5, 4, 8, 6, 0]
print "Unsorted: "
p sample_array
print "Sorted: "
p merge_sort(sample_array)

puts ""

rand_array = random_array(20, 100)
print "Unsorted random array: "
p rand_array
print "Sorted random array: "
p merge_sort(rand_array)