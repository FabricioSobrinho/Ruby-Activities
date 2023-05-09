puts "Insira o primeiro número: "
n1 = gets.chomp.to_f
puts "Insira o segundo número: "
n2 = gets.chomp.to_f
 def op(n1,n2)
    puts "#{n1 + n2}"
    puts "#{n1 - n2}"
    puts "#{n1 * n2}"
    puts "#{n1 / n2}"
 end
 
 puts op(n1,n2)