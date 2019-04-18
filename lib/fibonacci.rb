# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), where n is the value of the integer passed into the method. The loop will run n - 1 times, so the number of times is linearally related to the value of n.
# Space complexity: O(1) because regardless of the value of the integer passed in, the amount of memory used stays the same.
def fibonacci(n)
  if n.class != Integer || n < 0
    raise ArgumentError
  elsif n == 0
    return 0
  end

  result = 1
  a = 1
  b = 0
  (n - 1).times do
    result = a + b
    b = a
    a = result
  end

  return result
end
