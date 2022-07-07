# Write your code here.
katz_deli = []

def line(cust_line)
  if cust_line.empty?
    puts 'The line is currently empty.'
  else
    line_summary = 'The line is currently:'
    cust_line.each_with_index { |cust, index| line_summary << " #{index + 1}. #{cust}" }
    puts line_summary
  end
end

def take_a_number(cust_line, new_cust)
  cust_line << new_cust
  puts "Welcome, #{new_cust}. You are number #{cust_line.size} in line."
end

def now_serving(cust_line)
  if cust_line.empty?
    puts 'There is nobody waiting to be served!'
  else
    next_cust = cust_line.shift
    puts "Currently serving #{next_cust}."
  end
end
