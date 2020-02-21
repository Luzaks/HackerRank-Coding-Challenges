# frozen_string_literal: true

def time_conversion(s)
  converted_string = s.chars.join.delete 'PM'
  hour = s.split(':').first.to_i
  if s.include?('PM') && hour.eql?(12)
    (converted_string.split(':').first.to_i).to_s + ':' + converted_string.split(':').drop(1).join(':')
  elsif s.include?('PM') && !hour.eql?(12)
    (converted_string.split(':').first.to_i + 12).to_s + ":" + converted_string.split(':').drop(1).join(':')
  elsif s.include?('AM') && hour.eql?(12)
    converted_string = s.chars.join.delete 'AM'
    (converted_string.split(':').first.to_i - 12).to_s + '0:' + converted_string.split(':').drop(1).join(':')
  elsif s.include?('AM') && !hour.eql?(12)
    s.chars.join.delete 'AM'
  end
end

s = '07:40:22AM'
p time_conversion(s)
