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
end
