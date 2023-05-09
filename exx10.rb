lista = ["Alface", "Cenoura", "Abóbora", "Agrião", "Brócolis"]
res = []
lista.each do |c|
    if c.downcase.start_with?("a") 
        res << c 
    end
end
puts res 
        