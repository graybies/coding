def digit_sum(n):
  total = 0
  string_n = str(n)
  for char in string_n:
    total += int(char)
  return total
  
print digit_sum(12345)