class Livros 
    attr_accessor :titulo, :autor, :ano
    def initialize(titulo,autor,ano)
        @titulo = titulo
        @autor = autor 
        @ano = ano 
    end
end
livros = []
livros << Livros.new("King Of Scars", "Leigh Bardugo", 2021)
livros << Livros.new("Six of Crows", "Leigh Bardugo", 2019)

livros.each do |livro|
    puts "O livro #{livro.titulo} Foi escrito por #{livro.autor} e lançado em #{livro.ano}"
end

