
@contatos = [
    {nome: "Fabrício", telefone: 998899889},
    {nome: "Contato 1", telefone: 889988992}
]
 def exibir_contatos
    puts "________________________________________________________________________"
    @contatos.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts "________________________________________________________________________"
end
def adicionar_contato 
    puts "________________________________________________________________________"
    puts "Insira o Nome do contato: "
    nome = gets.chomp
    puts "Insira o telefone do contato: "
    telefone = gets.chomp.to_i 
    @contatos << {nome: nome, telefone: telefone }  
    puts "________________________________________________________________________"
end
def ver_contato 
    puts "________________________________________________________________________"
    puts "Insira o contato o qual você quer pesquisar: "
    nome = gets.chomp
    @contatos.each do |contato|
        if contato[:nome].downcase == nome.downcase
            puts "#{contato[:nome]} - #{contato[:telefone]}"
        end
    end
    puts "________________________________________________________________________"
end
def editar_contato 
    puts "________________________________________________________________________"
    puts "Insira o contato o qual você quer editar: "
    nome = gets.chomp
    @contatos.each do |contato|
        if contato[:nome].downcase == nome.downcase
            puts "Insira o novo nome(Caso não queira mudar deixe esse campo vázio): "
            nome_salvo = contato[:nome]
            contato[:nome] = gets.chomp 
            contato[:nome] = contato[:nome].empty? ? nome_salvo : contato[:nome]
            puts "Insira o novo número(Caso não queira mudar deixe esse campo vázio): "
            telefone_salvo = contato[:telefone]
            contato[:telefone] = gets.chomp 
            contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone]
        end 
    end 
    puts "________________________________________________________________________"
end
def remover_contato 
    puts "________________________________________________________________________"
    puts "Insira o nome do contato que você deseja remover: " 
    nome = gets.chomp
    @contatos.each do |contato|
        if contato[:nome].downcase == nome.downcase
            posicao = @contatos.index(contato)
            @contatos.delete_at(posicao)
        end
    end
    puts "________________________________________________________________________"
end

 loop do
 puts "Escolha uma função: \n 1 - Ver contatos \n 2 - Adicionar contato \n 3 - ver contato \n 4 - editar contato \n 5 - remover contato \n 0 - sair"
 yn = gets.chomp.to_i
    if yn == 0  
    break
    elsif yn == 1 
        exibir_contatos
    elsif yn == 2 
        adicionar_contato
    elsif yn == 3
        ver_contato
    elsif  yn == 4 
        editar_contato
    elsif yn == 5
        remover_contato
    else 
        puts "Funcao não existe"
    end
end


        