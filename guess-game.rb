# Função para executar a mensagem de boas-vindas
# Function to execute the welcome message
def executa_boas_vindas
    puts
    puts "*************************************"
    puts "* Bem-Vindo ao jogo da adivinhação! *"
    puts "************************************* \n\n"

    puts "Qual é o seu nome?" # Solicita o nome do jogador / Asks for the player's name
    nome = gets.chomp # Lê o nome do jogador e remove a nova linha / Reads the player's name and removes the newline
    puts

    puts "Começaremos o jogo para você, #{nome}! \n\n" # Inicia o jogo com o nome do jogador / Starts the game with the player's name
    nome
end

# Função para sortear um número secreto com base na dificuldade
# Function to draw a secret number based on the difficulty level
def sorteia_numero_secreto(dificuldade)
    maximo = case dificuldade
             when 1 then 40
             when 2 then 80
             when 3 then 120
             when 4 then 160
             when 5 then 200
             else 200 # valor padrão / default value
             end

    puts "Escolhendo número aleatório entre 0 e #{maximo}... \n\n" # Informa ao jogador que um número aleatório está sendo escolhido / Informs the player that a random number is being chosen
    rand(maximo) + 1 # Sorteia um número aleatório entre 1 e o valor máximo / Draws a random number between 1 and the maximum value
end

# Função para solicitar um número ao jogador
# Function to request a number from the player
def solicita_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}" # Exibe o número da tentativa atual e o total de tentativas / Displays the current attempt number and the total attempts
    puts "Chutes realizados até o momento: #{chutes.join(", ")}" # Exibe os números já chutados / Displays the numbers already guessed
    puts "Escolha um número: "
    
    begin
        chute = Integer(gets.strip) # Lê o número chutado pelo jogador e remove espaços em branco / Reads the guessed number and removes whitespace
    rescue ArgumentError
        puts "Por favor, insira um número válido." # Mensagem de erro para número inválido / Error message for invalid number
        return solicita_numero(chutes, tentativa, limite_de_tentativas)
    end

    puts "Você chutou: #{chute}" # Exibe o número chutado / Displays the guessed number
    chute
end

# Função para verificar se o jogador acertou o número secreto
# Function to check if the player guessed the secret number
def verifica_acerto(numero_secreto, chute)
    if chute == numero_secreto
        puts "Número correto! \n\n"
        return true # Retorna verdadeiro se o jogador acertou / Returns true if the player guessed correctly
    else
        puts "Você errou! \n\n"
        if chute > numero_secreto
            puts "O número que você chutou é MAIOR que o número secreto! \n\n" # Mensagem para chute maior / Message for higher guess
        else
            puts "O número que você chutou é MENOR que o número secreto! \n\n" # Mensagem para chute menor / Message for lower guess
        end
        return false # Retorna falso se o jogador errou / Returns false if the player guessed incorrectly
    end
end

# Função para solicitar o nível de dificuldade ao jogador
# Function to ask the player for the difficulty level
def solicita_dificuldade
    puts "Qual nível de dificuldade você deseja? (1 fácil, 5 difícil)"
    
    begin
        dificuldade = Integer(gets.strip) # Lê o nível de dificuldade escolhido pelo jogador / Reads the chosen difficulty level from the player
        if dificuldade < 1 || dificuldade > 5
            puts "Por favor, insira um número entre 1 e 5." # Mensagem de erro para nível inválido / Error message for invalid level
            return solicita_dificuldade
        end
    rescue ArgumentError
        puts "Por favor, insira um número válido." # Mensagem de erro para entrada inválida / Error message for invalid input
        return solicita_dificuldade
    end

    dificuldade
end

# Função principal do jogo
# Main function of the game
def joga(nome, dificuldade)
    numero_secreto = sorteia_numero_secreto(dificuldade) # Sorteia o número secreto com base na dificuldade / Draws the secret number based on the difficulty level
    limite_de_tentativas = 5 # Define o número máximo de tentativas / Sets the maximum number of attempts
    chutes = [] # Inicializa um array para armazenar os chutes / Initializes an array to store the guesses
    pontos_ate_agora = 1000 # Inicializa a pontuação do jogador / Initializes the player's score

    for tentativa in 1..limite_de_tentativas
        chute = solicita_numero(chutes, tentativa, limite_de_tentativas) # Solicita um número ao jogador / Requests a number from the player
        chutes << chute # Armazena o chute no array de chutes / Stores the guess in the array of guesses

        if nome == "Guilherme"
            puts "Acertou!" # Mensagem especial se o jogador for "Guilherme" / Special message if the player's name is "Guilherme"
            break
        end

        pontos_a_perder = ((chute - numero_secreto).abs / 2.0).to_i # Calcula os pontos a serem perdidos com base na diferença entre o chute e o número secreto / Calculates the points to be lost based on the difference between the guess and the secret number
        pontos_ate_agora -= pontos_a_perder # Atualiza a pontuação do jogador / Updates the player's score
        
        if verifica_acerto(numero_secreto, chute) # Verifica se o jogador acertou o número secreto / Checks if the player guessed the secret number
            break
        end
    end

    puts "Você ganhou #{pontos_ate_agora} pontos." # Exibe a pontuação final do jogador / Displays the player's final score
end

# Função para perguntar se o jogador deseja jogar novamente
# Function to ask if the player wants to play again
def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip.upcase # Lê a resposta do jogador / Reads the player's response
    quero_jogar != "S" # Verifica se a resposta é "N" / Checks if the response is "N"
end

# Função para registrar as pontuações altas
# Function to record high scores
def registrar_pontuacao(nome, pontuacao)
    File.open("pontuacoes_altas.txt", "a") do |file| # Abre o arquivo de pontuações altas no modo append / Opens the high scores file in append mode
        file.puts("#{nome}: #{pontuacao}") # Adiciona a pontuação do jogador no arquivo / Adds the player's score to the file
    end
end

# Função para exibir as pontuações altas
# Function to display high scores
def exibir_pontuacoes_altas
    if File.exist?("pontuacoes_altas.txt") # Verifica se o arquivo de pontuações altas existe / Checks if the high scores file exists
        puts "Pontuações Altas:"
        File.foreach("pontuacoes_altas.txt") { |line| puts line } # Exibe cada linha do arquivo / Displays each line of the file
    else
        puts "Nenhuma pontuação registrada ainda." # Mensagem caso não haja pontuações registradas / Message if no scores are recorded
    end
end

# Função para solicitar dica ao jogador
# Function to offer a hint to the player
def oferecer_dica(numero_secreto)
    puts "Você gostaria de uma dica? (S/N)"
    resposta = gets.strip.upcase
    if resposta == "S"
        dica = numero_secreto.even? ? "O número secreto é PAR." : "O número secreto é ÍMPAR." # Fornece dica se o número secreto é par ou ímpar / Provides a hint if the secret number is even or odd
        puts dica
    end
end

# Função para permitir que o jogador escolha um número secreto
# Function to allow the player to choose a secret number
def jogador_escolhe_numero_secreto
    puts "Escolha um número secreto para que outro jogador adivinhe (entre 1 e 200):"
    begin
        numero_secreto = Integer(gets.strip)
        if numero_secreto < 1 || numero_secreto > 200
            puts "Por favor, insira um número entre 1 e 200." # Mensagem de erro para número inválido / Error message for invalid number
            return jogador_escolhe_numero_secreto
        end
    rescue ArgumentError
        puts "Por favor, insira um número válido." # Mensagem de erro para entrada inválida / Error message for invalid input
        return jogador_escolhe_numero_secreto
    end
    numero_secreto
end

# Função principal do jogo em que o jogador escolhe o número secreto
# Main game function where the player chooses the secret number
def joga_com_numero_escolhido(nome)
    numero_secreto = jogador_escolhe_numero_secreto # Permite que o jogador escolha um número secreto / Allows the player to choose a secret number
    limite_de_tentativas = 5 # Define o número máximo de tentativas / Sets the maximum number of attempts
    chutes = [] # Inicializa um array para armazenar os chutes / Initializes an array to store the guesses
    pontos_ate_agora = 1000 # Inicializa a pontuação do jogador / Initializes the player's score

    for tentativa in 1..limite_de_tentativas
        chute = solicita_numero(chutes, tentativa, limite_de_tentativas) # Solicita um número ao jogador / Requests a number from the player
        chutes << chute # Armazena o chute no array de chutes / Stores the guess in the array of guesses

        pontos_a_perder = ((chute - numero_secreto).abs / 2.0).to_i # Calcula os pontos a serem perdidos com base na diferença entre o chute e o número secreto / Calculates the points to be lost based on the difference between the guess and the secret number
        pontos_ate_agora -= pontos_a_perder # Atualiza a pontuação do jogador / Updates the player's score

        if verifica_acerto(numero_secreto, chute) # Verifica se o jogador acertou o número secreto / Checks if the player guessed the secret number
            break
        end
    end

    puts "Você ganhou #{pontos_ate_agora} pontos." # Exibe a pontuação final do jogador / Displays the player's final score
    registrar_pontuacao(nome, pontos_ate_agora) # Registra a pontuação do jogador / Records the player's score
end

# Código principal do jogo / Main game code
nome = executa_boas_vindas # Executa a mensagem de boas-vindas e obtém o nome do jogador / Executes the welcome message and gets the player's name
dificuldade = solicita_dificuldade # Solicita o nível de dificuldade ao jogador / Asks the player for the difficulty level

loop do
    puts "Você quer adivinhar o número secreto ou escolher um número para outro jogador adivinhar? (1 para adivinhar, 2 para escolher)"
    escolha = gets.strip.to_i # Lê a escolha do jogador / Reads the player's choice

    if escolha == 1
        joga(nome, dificuldade) # Executa o jogo normal / Executes the normal game
    elsif escolha == 2
        joga_com_numero_escolhido(nome) # Executa o jogo onde o jogador escolhe o número secreto / Executes the game where the player chooses the secret number
    else
        puts "Escolha inválida. Por favor, tente novamente." # Mensagem de erro para escolha inválida / Error message for invalid choice
        next
    end

    break if nao_quer_jogar? # Verifica se o jogador deseja parar / Checks if the player wants to stop
end

exibir_pontuacoes_altas # Exibe as pontuações altas ao final do jogo / Displays the high scores at the end of the game