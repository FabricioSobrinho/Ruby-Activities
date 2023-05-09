nomes = []
notas = []
def exibir_notas(nomes, notas)
    nomes = @nome
    notas = @notas
    i = 0
    nomes.each do |nome|
      if (notas[i] / 3) >= 7 #Condicional para verificação de nota na posição i
        situacao = "Aprovado"
      else 
        situacao = "reprovado"
      end
        puts "#{nome} esta com média: #{notas[i] / 3} \n #{situacao} " 
        puts "=============================================="
        i += 1
    end
end
