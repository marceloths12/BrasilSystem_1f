# básico
puts "\n\n 01) Crie um algoritmo que receba o nome como entrada e nós dê como saída o nome digitado e o comprimento do mesmo. \n\n"
puts "Digite um nome: "
nome = gets.chomp;

caracteres = nome.gsub(' ', '');

puts nome.inspect;

puts "#{nome} tem #{caracteres.length} letras"