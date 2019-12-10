# frozen_string_literal: true

def kangaroo(x1, v1, x2, v2)
  if x1 < x2 && v1 < v2
    'NO'
  elsif v1 != v2 && ((x2 - x1) % (v1 - v2)).zero?
    'YES'
  else
    'NO'
  end
end

p kangaroo(0, 2, 5, 3)
