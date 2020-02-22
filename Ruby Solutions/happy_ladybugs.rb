# frozen_string_literal: true

def happy_ladybugs(b)
  ocurrences = []
  if b.count('_').zero?
    arr = b.split('')
    arr.each_with_index do |_bug, index|
      break if index.eql?(arr[arr.length - 1])

      arr[index - 1] != arr[index] && arr[index + 1] != arr[index] ? ocurrences << 'NO' : ocurrences << 'YES'
    end
    ocurrences.all?('YES') && ocurrences.length > 1 ? 'YES' : 'NO'
  else
    sorted_string = b.chars.sort.join.delete '_'
    arr = sorted_tring.split('')
    for i in 0...arr.length do
      ocurrences << arr.count(arr[i])
    end
    ocurrences.all? { |number| number > 1 || number.zero? } ? 'YES' : 'NO'
  end
end

b = 'G'
p happy_ladybugs(b)
