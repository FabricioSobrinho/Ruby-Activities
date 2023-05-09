class Retangulo 
    attr_accessor :base, :altura
    def initialize(base, altura)
        @base = base 
        @altura = altura 
    end
    def calc_area
        return (@base * @altura)
    end
end

    calculo = Retangulo.new(4, 2)
    puts calculo.calc_area