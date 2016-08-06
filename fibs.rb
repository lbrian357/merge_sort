def fibs(n)
  seq = [0, 1]
  n.times {seq << seq[-1] + seq[-2]}
  seq[0..n-1]  
end

p fibs(10)
