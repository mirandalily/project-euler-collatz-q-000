def even_next(n)
  n/2
end

def odd_next(n)
  (3 * n) +  1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  array = [n]
  while n > 1
    n = next_value(n)
    array << n
  end
  return array
end

def longest_collatz
  n = 1
  longest_start = 1
  longest_length = 1
  while n < 999999
    if collatz(n).length > longest_length
      longest_start = n
      longest_length = collatz(n).length
    end
    n += 1
  end
  return longest_start
end
