puts "\n\n 3) Faça o somatório da sua data de nascimento. \n\n"

def solicitarData
    puts "Digite sua data de nascimento."
    puts "Letras serão desconsideradas e será verificado a primeira data informada."
    print "\n(DIA/MES/ANO) : ";
    gets_data = gets.chomp;
    verificarData(gets_data);
end


def verificarData(gets_data = "")
    # Remove os caracteres indesejados e separa somente o numeros que se emcaixam
    # no formato de data dd/mm/yyy e que estejam separados por '/' e transforma em uma string
    #caso me retorne mais de uma data, so irá ficar com a primeira.
    dataNascimento = gets_data.scan(/\d{2}\/\d{2}\/\d{4}/)[0];
    
    # se não tiver uma data depois de verificado, sera solicitado uma nova data.
    if !dataNascimento
        puts "\nERRO! A data informada não é válida. \nPor favor informe uma data válida. \n\n"
        solicitarData();
    else
        #removo as '/' para trabalhar com uma string que só tenha valores numericos. 
        dataSoNumero=dataNascimento.gsub('/','');
        somar(dataSoNumero);
    end
end

#funcção responsavel por quebrar a string, somar e exibir o resultado da soma.
def somar(dataSoNumero = "")
    somatorio = ""; 
    resultado = 0;

    for i in dataSoNumero.split("") do
        dataSoNumero[i].to_i>0? somatorio += "#{dataSoNumero[i]}" : ""
        resultado += dataSoNumero[i].to_i; 
    end
    #quebro a string e adiciono um '+' entre os caracteres;
    puts "#{somatorio.split("").join("+")} = #{resultado}";
end

solicitarData();