# frozen_string_literal: true

def compareTriplets(a, b)
  result = [0, 0]
  counter_a = 0
  counter_b = 0

  a.each_with_index do |_element, index|
    if a[index] > b[index]
      result[0] = counter_a += 1
    elsif a[index] < b[index]
      result[1] = counter_b += 1
    elsif a[index] == b[index]
      next
    end
  end
  result
end

a = [6, 8, 12]
b = [7, 9, 15]
p compareTriplets(a, b)
