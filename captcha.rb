def captcha_sum(digits)
  sum = 0
  index = 0
  input = digits.chars

  input.each do |int|
    if int == input[index + 1]
      sum += int.to_i
    end
    index += 1
  end
  if input[0] == input[-1]
    sum += input[0].to_i
  end
  sum
end

def captcha_sum_halfway(digits)
  sum = 0
  input = digits.chars
  halfway = input.length / 2

  (0..(halfway-1)).each do |i|
    if input[i] == input[i + halfway]
      sum += input[i].to_i
    end
  end

  sum * 2
end

