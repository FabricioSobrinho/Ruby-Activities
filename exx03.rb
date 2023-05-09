class Pessoa 
    attr_accessor :nome, :idade
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end
end
 p1 = Pessoa.new("Roger", 18)
 puts "Pessoa: #{p1.nome} com #{p1.idade} anos"

