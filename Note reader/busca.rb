def buscar_aluno 
    puts "Insira o nome do Aluno: "
    name = gets.chomp.downcase
    index = @nome.find_index {|n| n.strip.chomp.downcase == name } #Em resumo, esse bloco verifica se o elemento n do array @nome é igual ao nome digitado pelo usuário, ignorando diferenças de maiúsculas e minúsculas e espaços em branco no começo e no final do nome.
    if index
      puts "======================================================"
      puts "#{name.capitalize} está com média: \n #{@notas[index] / 3}" 
      puts "======================================================"
    else
      puts "O nome #{name.capitalize} não foi encontrado na lista."
    end
  end
  