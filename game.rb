vars = ["Камень", "Ножницы", "Бумага"]

puts "Choose 0 1 2 from array"
puts vars

ch = gets.chomp #user index number

num = vars.sample #comp string sample rand

cho = vars.bsearch_index{|x| x == num}.to_i #comp index num

puts "Your choice is #{vars.fetch(ch.to_i)}"
puts "Comp choice is #{num}"

if cho.to_i == ch.to_i 
  puts "Ничья"
else
  case ch.to_i
  when 0
    if cho.to_i == 1
      puts "You win!"
    elsif cho.to_i == 2
      puts "You loose!"
    end
  when 1
    if cho.to_i == 2
      puts "You win!"
    elsif cho.to_i == 0
      puts "You loose!"
    end
  when 2
    if cho.to_i == 0
      puts "You win!"
    elsif cho.to_i == 1
      puts "You loose!"
    end
  end
end