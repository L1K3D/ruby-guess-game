def executa_boas_vindas
    puts
    puts "*************************************"
    puts "* Bem-Vindo ao jogo da adivinhação! *"
    puts "************************************* \n\n"

    puts "Qual é o seu nome?"
    nome = gets.chomp
    puts

    puts "Começaremos o jogo para você, " + nome + "! \n\n"
end

def sorteia_numero_secreto
    puts "Escolhendo número aleatório entre 0 e 100... \n\n"
    numero_sorteado = 95
    numero_sorteado
end

def solicita_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Chutes realizados até o momento: " + chutes.to_s
    puts "Escolha um número: "
    chute = gets.chomp
    puts "Você chutou: " + chute
    chute  
end

def verifica_acerto(numero_secreto, chute)
    acertou = chute.to_i == numero_secreto.to_i

    if acertou
        puts "Número correto! \n\n"
        return true
    end

    puts "Você errou! \n\n"
    maior = chute.to_i > numero_secreto

    if maior
        puts "O número que você chutou é MAIOR que o número secreto! \n\n"
    else
        puts "O número que você chutou é MENOR que o número secreto! \n\n"
    end
    
    return false
end

executa_boas_vindas
numero_secreto = sorteia_numero_secreto

puts "Número escolhido... Que tal adivinhar hoje o nosso número secreto? \n\n"

limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas
    chute = solicita_numero(chutes, tentativa, limite_de_tentativas)

    chutes << chute

    if verifica_acerto(numero_secreto, chute)
        break  
    end
end