puts
puts "*************************************"
puts "* Bem-Vindo ao jogo da adivinhação! *"
puts "************************************* \n\n"

puts "Qual é o seu nome?"
nome = gets
puts

puts "Começaremos o jogo para você, " + nome + "! \n\n"

def sorteia_numero_secreto
    puts "Escolhendo número aleatório entre 0 e 100... \n\n"
    numero_sorteado = 95
    return numero_sorteado

numero_secreto = sorteia_numero_secreto

puts "Número escolhido... Que tal adivinhar hoje o nosso número secreto? \n\n"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s

    puts "Entre com o seu número: "
    chute = gets
    puts

    puts "Você chutou: " + chute + "\n"

    acertou = chute.to_i == numero_secreto

    if acertou
        puts "Número correto! \n\n"
        break
    else
        puts "Você errou! \n\n"

        maior = chute.to_i > numero_secreto

        if maior
            puts "O número que você chutou é maior que o número secreto! \n\n"
        else
            puts "O número que você chutou é menor que o número secreto! \n\n"
        end
    end
end
