def fibo_finder(n)
  counter = 2
  if n == 0
    result = 0
  else
    if n == 1
      result = 1
    else
      result = 2
      until counter == n
        result += result-1
        counter += 1
      end
    end
  end
  result
end