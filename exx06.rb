numeros = []
puts "Adc novo número? sim ou não"
yn = gets.chomp

while yn == "sim" || yn == "não"
    puts "Insira o número:"
    i = gets.chomp.to_i
    numeros.push(i)
    puts "Finalizar e ver a média? sim ou não?" 
    yn = gets.chomp
    if yn == "sim" 
        soma = 0
        numeros.each do |numero|
            soma += numero
            yn = "out"
            $media = soma / numeros.count.to_f
        end
        puts $media
    end
end




            