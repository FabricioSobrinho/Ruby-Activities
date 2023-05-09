class Circulo 
    attr_accessor :raio
    def initialize(raio)
        @raio = raio
    $a = (@raio ** 2) * 3.14
    $pe = 2 * 3.14 * @raio 
    end
end
 calc = Circulo.new(3)
 puts "A área é de: #{$a}u e o perimetro do circulo é: #{$pe}u "
