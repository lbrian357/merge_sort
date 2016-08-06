def merge_sort(a, b = [])
  return b if a.empty?
  a = a.each_slice(1).to_a unless a[0].class == Array
 a.each_with_index do |obj, indexx| 
   p obj[0] 
   p a[indexx+1][0]
   p a
    if obj[0] < a[indexx+1][0]
     b.push([a.delete_at(indexx)[0], a.delete_at(indexx+1)[0]])
    else
      b.push([a.delete_at(indexx+1)[0], a.delete_at(indexx)[0]])
    end
 end
merge_sort(a, b)




  
end

p merge_sort([6,5,4,3,2,1], b =[])

