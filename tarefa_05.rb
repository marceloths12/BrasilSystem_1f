puts "Informe o ddd";
gets_ddd = gets.chomp

ddd = {
    "61"=>"Brasilia",
    "71"=>"Salvador",
    "11"=>"São Paulo",
    "21"=>"Rio de Janeiro",
    "32"=>"Juiz de fora",
    "19"=>"Campinas"
}



if ddd.include?(gets_ddd)
    puts "DDD de #{ddd.fetch(gets_ddd)}";
    else
     puts "DDD não cadastrado"
end
