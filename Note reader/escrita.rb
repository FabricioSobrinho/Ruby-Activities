def inserir_aluno
puts "Insira o nome do aluno e em seguida as 3 notas: "
nome = gets.chomp
n1 = gets.chomp.to_f
if n1 > 10 || n1 < 0
    while n1 > 10 || n1 < 0
        puts "Insira uma nota vállida: "
        n1 = gets.chomp.to_f
    end
end
n2 = gets.chomp.to_f
if n2 > 10 || n2 < 0
    while n2 > 10 || n2 < 0
        puts "Insira uma nota vállida: "
    n2 = gets.chomp.to_f
    end
end
n3 = gets.chomp.to_f
if n3 > 10 || n3 < 0
    while n3 > 10 || n3 < 0
        puts "Insira uma nota vállida: "
        n3 = gets.chomp.to_f
    end
end

    File.open('media.txt', 'a') do |line|
    line.puts(nome)
    line.puts(n1)
    line.puts(n2)
    line.puts(n3)
    line.puts("")
    end
end

