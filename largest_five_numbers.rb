def solution(digits)
  highest = 0
  count = 0
  (digits.length - 3).times do |i|
    num = digits[i].to_i
    if count <= num
      count = digits[i].to_i
      number = [digits[i], digits[i+1], digits[i+2], digits[i+3], digits[i+4]].join.to_i
      if number > highest
        highest = number
      end
    end
  end
  highest
end

print solution("129432849203849023748923")
