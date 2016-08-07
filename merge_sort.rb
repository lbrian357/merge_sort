def merge_sort(a, use_ary = 0, b = [[]], max_a_length = 0)
 max_a_length = a.length if a.length > max_a_length #saves the original array length to be used as the base case
  return b[0] if b.last.length == max_a_length #base case
=begin for debugging reasons, to be deleted
   p "#{max_a_length} is max_a_length"
    p "#{a} is a"
    p "#{b} is b"
    p "#{use_ary} is use_ary"
=end
  a.push([]) if a.length == 1 #fix for error when there is only 1 element in array a left to compare
  use_ary = 0 if a.empty? #counter to generate new sub array
  a = b if a.empty? #passes b to a so recussion can always use a as the starting array to sort
  b = [[]] if a == b 
  a = a.each_slice(1).to_a unless a[0].class == Array #used initially to divide each element into it's own array
    if a[0].empty? && a[1].empty?
      a.delete_at(1) && a.delete_at(0)
      b.push([])
      use_ary += 1
    #elsif use_ary == 1 && b.length == 1
    #  return b[0]
    elsif a[0].empty?
      b[use_ary].push(a[1].delete_at(0))
    elsif a[1].empty?
      b[use_ary].push(a[0].delete_at(0))
    elsif a[0][0] < a[1][0]
      b[use_ary].push(a[0].delete_at(0))
    else
      b[use_ary].push(a[1].delete_at(0))
    end

merge_sort(a,use_ary, b, max_a_length)

end

def random_n
  rand(0..1000000)
end

p merge_sort([8,7,6,5,4,3,2,1])
p merge_sort([6,5,4,3,2,1])
p merge_sort([5,4,3,2,1])
p merge_sort([23, 2419, 217, 203, 482, 19])
p merge_sort([random_n, random_n, random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n,random_n])
