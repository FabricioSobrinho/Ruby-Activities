lista = [111, 54, 3, 44]

maior_num = lista[0]
menor_num = lista[0] # o valor do menor numero precisa estar na lista para haver as comparações
 lista.each do |numero| # A variavel numero vai percorrer o array e fazer as comparações
    if numero > maior_num # Se houver um numero maior que o maior valor atual a variavel maior assume esse valor e o mesmo ocorre pro menor num
        maior_num = numero
    end
    if numero < menor_num 
        menor_num = numero
    end
end

puts "O Maior número é: #{maior_num}"
puts "O Menor número é: #{menor_num}"