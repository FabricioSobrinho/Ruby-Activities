require_relative 'calcmedia.rb'
require_relative 'escrita.rb'
require_relative 'busca.rb'
require_relative 'exibirnotas.rb'

loop do 
  puts "Escolha uma função: \n 1 - Ver Todas as notas \n 2 - Adicionar Aluno \n 3 - ver Aluno específico \n 4 - Sair"
  yn = gets.chomp.to_i
  if yn == 1 
    nomes = []
    notas = []
    exibir_notas(nomes, notas)
  elsif yn == 2 
    inserir_aluno
    elsif yn == 3 
    buscar_aluno
    else 
      break 
    end
  end

