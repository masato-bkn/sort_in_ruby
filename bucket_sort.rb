def bucket_sort(array)
  buckets = {}
  (1..array.max).each {|i| buckets[i] = nil} 

  array.each {|i| buckets[i] = i}
  buckets.compact.values
end

def bucket_sort(array)
  array.each_with_object(Array.new(array.size)) do |e, a|
    a[e] = e 
  end.compact
end

p bucket_sort([13, 8, 3, 1, 11, 15, 2])
