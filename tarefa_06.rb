puts "\n\n 6) Faça um programa que, dado um número a partir do qual deve-se começar a contagem regressiva, imprima na tela a contagem regressiva desse número até 0. Ao final da contagem, imprima a mensagem KABUM.\n\n"


def solicitarNumero()
    puts "Insita um número positivo para começar a contagem regressiva."
    gets_numero = gets.chomp;
    puts"\n\n"
    
    if !gets_numero.index(/[a-z]/i);
        if gets_numero.to_i > 0 
            contador(gets_numero.to_i)
        else
            puts "ERRO! o número informado deve ser positivo!"
            solicitarNumero();
        end
    else
        puts "ERRO! Por favor insira um número válido!"
        solicitarNumero();
    end   
end

def contador(gets_numero = 0)
    contador = gets_numero;
    while contador >= 0 do 
        puts contador;
        contador -=1;
    end
    puts "KABUM"
end
solicitarNumero()