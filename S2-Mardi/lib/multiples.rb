def is_multiple_of_3_or_5?(n)
  if n % 3 == 0 || n % 5 == 0
    return true
  else
    return false
  end
end

def sum_of_3_or_5_multiples(n)
  i = 0
  sum = 0
  if (n.is_a? Integer) && n >= 0
    while (i < n)
      if is_multiple_of_3_or_5?(i)
        sum += i
      end
        i += 1
      end
    return sum
  else
    return "Yo ! Je ne prends que les entiers naturels. TG"
  end
end
