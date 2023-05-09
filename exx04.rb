print "Digite uma string: "
string = gets.chomp.downcase
letras = {}
string.each_char do |letra|
  if letras[letra]
    letras[letra] += 1
  else
    letras[letra] = 1
  end
end

letras.each do |letra, quantidade|
  puts "#{letra}: #{quantidade}"
end
