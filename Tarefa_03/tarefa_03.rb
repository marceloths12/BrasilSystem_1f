puts "\n\n 3)Receba uma string e imprima metade da mesma.\n\n"

gets_nome = gets.chomp;

metade = (gets_nome.length.to_f / 2).ceil;#aredonda para cima

puts gets_nome[0...metade];
