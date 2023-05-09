arquivo = File.open('media.txt') 
def ver_media(arquivo)    
    @soma_notas = 0
    @notas = []
    @nome = [] 
    arquivo.each do |linha|
      begin # Bloco begin trata de excessões o ruby 
        numero = Float(linha.strip) # se o número pode ser convertido para real ele é aceito
        @soma_notas += numero
      rescue ArgumentError # Se houver um erro e o número não puder ser Convertido para real a execução para e os valores são adicionados ao vetor caso a linha esteja vazia se estiver preenchida subentende-se que é um nome e esse nome é adicionado ao vetor nome
        if linha.strip.empty? 
          @notas << @soma_notas
          @soma_notas = 0
        else
          @nome << linha
        end
      end
    end
  end
  ver_media(arquivo)