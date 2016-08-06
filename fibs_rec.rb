def fibs_rec(n, seq = [0,1])

  return seq[0..n] if seq.length == n
  seq << seq[-1] + seq[-2]
  fibs_rec(n, seq)
end

p fibs_rec(15)
