(PT-BR 🇧🇷)
# Jogo da Adivinhação

Bem-vindo ao repositório do Jogo da Adivinhação! Este é um projeto de jogo simples desenvolvido em Ruby, onde o jogador tenta adivinhar um número secreto gerado aleatoriamente ou definido por outro jogador.

## Funcionamento do Jogo

O Jogo da Adivinhação consiste em adivinhar um número secreto dentro de um intervalo determinado pela dificuldade escolhida. O jogo oferece diversas funcionalidades e melhorias para tornar a experiência mais agradável e interativa.

### Funcionalidades Principais

- **Escolha de Nível de Dificuldade:** O jogador pode escolher o nível de dificuldade, que define o intervalo do número secreto.
- **Dicas:** O jogador pode solicitar dicas sobre se o número secreto é par ou ímpar.
- **Sistema de Pontuação:** O jogo mantém uma pontuação com base na precisão dos chutes.
- **Registro de Pontuações Altas:** As pontuações dos jogadores são registradas para incentivar a competição.
- **Modo Multijogador:** Um jogador pode definir o número secreto para que outro jogador tente adivinhar.

### Instruções de Jogo

1. Ao iniciar o jogo, você será recebido com uma mensagem de boas-vindas e será solicitado a inserir seu nome.
2. Em seguida, escolha o nível de dificuldade (1 para fácil, 5 para difícil).
3. Você pode optar por adivinhar o número secreto ou definir um número para outro jogador adivinhar.
4. Durante o jogo, insira seus chutes e receba feedback se o número chutado é maior ou menor que o número secreto.
5. O jogo termina quando você adivinhar o número secreto ou esgotar suas tentativas.
6. Suas pontuações serão registradas e exibidas ao final do jogo.

### Código Principal

O código principal do jogo é dividido em várias funções, cada uma responsável por uma parte específica da lógica do jogo. Abaixo está uma breve descrição de cada função:

- `executa_boas_vindas`: Exibe a mensagem de boas-vindas e solicita o nome do jogador.
- `sorteia_numero_secreto`: Gera um número secreto com base na dificuldade escolhida.
- `solicita_numero`: Solicita um número do jogador e valida a entrada.
- `verifica_acerto`: Verifica se o jogador acertou o número secreto e fornece feedback.
- `solicita_dificuldade`: Solicita o nível de dificuldade do jogador e valida a entrada.
- `joga`: Função principal do jogo para adivinhar o número secreto gerado.
- `nao_quer_jogar`: Pergunta se o jogador deseja jogar novamente.
- `registrar_pontuacao`: Registra as pontuações dos jogadores.
- `exibir_pontuacoes_altas`: Exibe as pontuações altas registradas.
- `oferecer_dica`: Oferece uma dica ao jogador sobre o número secreto.
- `jogador_escolhe_numero_secreto`: Permite que um jogador escolha o número secreto para outro jogador adivinhar.
- `joga_com_numero_escolhido`: Função do jogo onde o jogador escolhe o número secreto.

## Funcionamento do Código

Vamos explicar como cada parte do código contribui para o funcionamento do jogo:

- **Função `executa_boas_vindas`:** Esta função exibe uma mensagem de boas-vindas ao jogador e solicita seu nome. O nome do jogador é armazenado e usado para personalizar mensagens durante o jogo.

- **Função `sorteia_numero_secreto`:** Esta função gera um número secreto com base no nível de dificuldade escolhido pelo jogador. Dependendo da dificuldade, o intervalo do número secreto varia, tornando o jogo mais fácil ou mais difícil.

- **Função `solicita_numero`:** Esta função solicita que o jogador insira um número como chute. Ela também valida a entrada para garantir que um número válido foi inserido. O chute é comparado com o número secreto para verificar se está correto.

- **Função `verifica_acerto`:** Esta função verifica se o chute do jogador é igual ao número secreto. Se for igual, o jogador acerta e a função retorna `true`. Caso contrário, ela fornece feedback indicando se o chute é maior ou menor que o número secreto e retorna `false`.

- **Função `solicita_dificuldade`:** Esta função solicita que o jogador escolha o nível de dificuldade do jogo. Ela valida a entrada para garantir que um nível válido foi escolhido.

- **Função `joga`:** Esta é a função principal do jogo, onde o jogador tenta adivinhar o número secreto gerado. Ela gerencia as tentativas, pontuações e validações, fornecendo feedback ao jogador durante todo o processo.

- **Função `nao_quer_jogar`:** Esta função pergunta ao jogador se ele deseja jogar novamente. Se a resposta for negativa, o loop principal do jogo é interrompido.

- **Função `registrar_pontuacao`:** Esta função registra a pontuação do jogador em um arquivo de pontuações altas. Isso permite que as pontuações sejam armazenadas e exibidas posteriormente.

- **Função `exibir_pontuacoes_altas`:** Esta função exibe as pontuações altas registradas ao final do jogo. Se não houver pontuações registradas, uma mensagem apropriada é exibida.

- **Função `oferecer_dica`:** Esta função oferece ao jogador uma dica sobre o número secreto, indicando se é par ou ímpar. O jogador pode optar por receber a dica ou não.

- **Função `jogador_escolhe_numero_secreto`:** Esta função permite que um jogador escolha um número secreto para outro jogador adivinhar. Ela valida a entrada para garantir que um número válido foi escolhido.

- **Função `joga_com_numero_escolhido`:** Esta função é similar à função `joga`, mas é usada quando o número secreto é definido por outro jogador. Ela gerencia as tentativas, pontuações e validações, fornecendo feedback ao jogador durante todo o processo.

## Requisitos

- Ruby instalado na máquina (versão 2.5 ou superior).

## Como Executar

1. Clone este repositório para sua máquina local.
2. Navegue até o diretório do projeto.
3. Execute o jogo com o comando:

---------------------------------------------------------------

(EN-US 🇺🇸)

# Guessing Game

Welcome to the Guessing Game repository! This is a simple game project developed in Ruby, where the player tries to guess a randomly generated secret number or a number set by another player.

## Game Mechanics

The Guessing Game consists of guessing a secret number within a range determined by the chosen difficulty. The game offers several features and improvements to make the experience more enjoyable and interactive.

### Key Features

- **Choose Difficulty Level:** The player can choose the difficulty level, which defines the range of the secret number.
- **Hints:** The player can request hints on whether the secret number is even or odd.
- **Scoring System:** The game keeps a score based on the accuracy of the guesses.
- **High Scores Recording:** Players' scores are recorded to encourage competition.
- **Multiplayer Mode:** One player can set the secret number for another player to guess.

### Game Instructions

1. Upon starting the game, you will be greeted with a welcome message and asked to enter your name.
2. Then, choose the difficulty level (1 for easy, 5 for hard).
3. You can choose to guess the secret number or set a number for another player to guess.
4. During the game, enter your guesses and receive feedback on whether the guessed number is higher or lower than the secret number.
5. The game ends when you guess the secret number or run out of attempts.
6. Your scores will be recorded and displayed at the end of the game.

### Main Code

The main game code is divided into various functions, each responsible for a specific part of the game's logic. Below is a brief description of each function:

- `executa_boas_vindas`: Displays the welcome message and asks for the player's name.
- `sorteia_numero_secreto`: Generates a secret number based on the chosen difficulty.
- `solicita_numero`: Asks for a number from the player and validates the input.
- `verifica_acerto`: Checks if the player guessed the secret number and provides feedback.
- `solicita_dificuldade`: Asks for the player's difficulty level and validates the input.
- `joga`: Main function for the game to guess the generated secret number.
- `nao_quer_jogar`: Asks if the player wants to play again.
- `registrar_pontuacao`: Records the players' scores.
- `exibir_pontuacoes_altas`: Displays the recorded high scores.
- `oferecer_dica`: Offers a hint to the player about the secret number.
- `jogador_escolhe_numero_secreto`: Allows one player to set the secret number for another player to guess.
- `joga_com_numero_escolhido`: Game function where the player sets the secret number.

## Code Functionality

Let's explain how each part of the code contributes to the game's functionality:

- **Function `executa_boas_vindas`:** This function displays a welcome message to the player and asks for their name. The player's name is stored and used to personalize messages during the game.

- **Function `sorteia_numero_secreto`:** This function generates a secret number based on the difficulty level chosen by the player. Depending on the difficulty, the range of the secret number varies, making the game easier or harder.

- **Function `solicita_numero`:** This function asks the player to enter a number as a guess. It also validates the input to ensure a valid number was entered. The guess is compared to the secret number to check if it is correct.

- **Function `verifica_acerto`:** This function checks if the player's guess is equal to the secret number. If it is, the player wins, and the function returns `true`. Otherwise, it provides feedback indicating whether the guess is higher or lower than the secret number and returns `false`.

- **Function `solicita_dificuldade`:** This function asks the player to choose the difficulty level of the game. It validates the input to ensure a valid level was chosen.

- **Function `joga`:** This is the main function of the game, where the player tries to guess the generated secret number. It manages attempts, scores, and validations, providing feedback to the player throughout the process.

- **Function `nao_quer_jogar`:** This function asks the player if they want to play again. If the answer is negative, the main game loop is terminated.

- **Function `registrar_pontuacao`:** This function records the player's score in a high scores file. This allows the scores to be stored and displayed later.

- **Function `exibir_pontuacoes_altas`:** This function displays the recorded high scores at the end of the game. If no scores are recorded, an appropriate message is displayed.

- **Function `oferecer_dica`:** This function offers the player a hint about the secret number, indicating whether it is even or odd. The player can choose to receive the hint or not.

- **Function `jogador_escolhe_numero_secreto`:** This function allows one player to set a secret number for another player to guess. It validates the input to ensure a valid number was chosen.

- **Function `joga_com_numero_escolhido`:** This function is similar to the `joga` function but is used when the secret number is set by another player. It manages attempts, scores, and validations, providing feedback to the player throughout the process.

## Requirements

- Ruby installed on the machine (version 2.5 or higher).

## How to Run

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Run the game with the command:

```sh