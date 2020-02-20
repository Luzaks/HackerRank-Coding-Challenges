# frozen_string_literal: true

def diagonal_difference(arr)
  absolute_difference = 0
  arr.each_with_index do |array, element_index|
    absolute_difference += array[element_index] -= array[-element_index - 1]
  end
  absolute_difference.abs
end

arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
p diagonal_difference(arr)
