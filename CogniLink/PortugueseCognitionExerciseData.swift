import Foundation

struct PortugueseCognitionExerciseData {

    static let allExercises: [Exercise] = [
        storyRecall,
        numberSequences,
        causeAndEffect,
        emotions,
        whatsWrong,
        yesNoQuestions,
        analogies
    ]

    // MARK: - Recordação da História
    private static let storyRecall = Exercise(
        id: UUID(),
        title: "Recordação da História",
        instructions: "Leia a história e responda às perguntas.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Maria foi ao supermercado comprar leite e pão. Ela esqueceu a carteira na bancada da cozinha. O que Maria deixou em casa?",
                options: ["A carteira dela", "As chaves dela", "Sua lista de compras", "O telefone dela"],
                correctAnswer: "A carteira dela",
                explanation: "Maria esqueceu a carteira na bancada da cozinha."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manuel acordou cedo no sábado para ir pescar. Ele pescou uma truta grande, mas teve que jogá-la de volta porque era muito pequena. Que tipo de peixe Manuel pescou?",
                options: ["Uma truta", "Um salmão", "Um baixo", "Um bagre"],
                correctAnswer: "Uma truta",
                explanation: "A história menciona que Manuel pescou uma truta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João estacionou o seu carro azul à sombra de um carvalho. Ao voltar, viu que o carro estava coberto de folhas amarelas. Qual é a cor do carro do João?",
                options: ["Azul", "Amarelo", "Vermelho", "Verde"],
                correctAnswer: "Azul",
                explanation: "A história diz que João tinha um carro azul."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana fez um bolo de chocolate para a festa de aniversário da filha. Ela colocou dez velas vermelhas no bolo. Quantas velas Ana colocou no bolo?",
                options: ["Dez", "Cinco", "Oito", "Doze"],
                correctAnswer: "Dez",
                explanation: "A história menciona que Ana colocou dez velas no bolo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João foi ao correio enviar um pacote para o irmão em São José. O funcionário disse que chegaria na terça-feira. Onde mora o irmão do João?",
                options: ["São José", "Nova York", "Boston", "Miami"],
                correctAnswer: "São José",
                explanation: "A história diz que o irmão de João mora em São José."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana comprou ontem um novo par de tênis de corrida. Eles são verdes brilhantes com listras brancas. De que cor são os novos tênis de corrida da Ana?",
                options: ["Verde brilhante", "Azul", "Vermelho", "Preto"],
                correctAnswer: "Verde brilhante",
                explanation: "A história descreve os tênis como verde brilhante."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manuel estava passeando no parque quando começou a chover. Ele abriu o guarda-chuva amarelo para ficar seco. Qual era a cor do guarda-chuva que Manuel usou?",
                options: ["Amarelo", "Vermelho", "Azul", "Preto"],
                correctAnswer: "Amarelo",
                explanation: "A história menciona que o guarda-chuva de Manuel era amarelo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A padaria local foi fechada na segunda-feira para reparos. Eles planejavam reabrir na manhã de terça-feira, às seis horas. Em que dia a padaria fechou?",
                options: ["Segunda-feira", "Terça-feira", "Quarta-feira", "Domingo"],
                correctAnswer: "Segunda-feira",
                explanation: "A história diz que a padaria foi fechada na segunda-feira."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Maria chamou um encanador porque a pia da cozinha estava vazando. O encanador chegou em uma hora e consertou o cano. Por que Maria chamou um encanador?",
                options: ["A pia dela estava vazando", "O fogão dela estava quebrado", "A luz estava apagada", "A porta estava trancada"],
                correctAnswer: "A pia dela estava vazando",
                explanation: "A história menciona que a pia da cozinha estava vazando."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João passeava com seu cachorro, Max, pelo quarteirão. Max viu um esquilo e latiu alto para ele. Qual é o nome do cachorro do João?",
                options: ["Max", "Amigo", "Charlie", "Rocky"],
                correctAnswer: "Max",
                explanation: "A história diz que o nome do cachorro de João é Max."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana estava fazendo sopa de legumes para o jantar. Ela percebeu que estava sem cenouras, então usou batatas. De que ingrediente Ana ficou sem?",
                options: ["Cenouras", "Batatas", "Cebolas", "Aipo"],
                correctAnswer: "Cenouras",
                explanation: "A história menciona que Ana ficou sem cenouras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manuel pediu uma pizza de calabresa e uma garrafa de refrigerante para o almoço. O custo total foi de quinze reais. Quanto custou o almoço do Manuel?",
                options: ["Quinze reais", "Dez reais", "Vinte reais", "Doze reais"],
                correctAnswer: "Quinze reais",
                explanation: "A história diz que o custo total foi de quinze reais."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Maria foi à biblioteca pegar emprestado um livro sobre jardinagem. Ela também pegou emprestado um DVD sobre história. Sobre qual assunto era o livro que Maria pegou emprestado?",
                options: ["Jardinagem", "História", "Culinária", "Viagens"],
                correctAnswer: "Jardinagem",
                explanation: "A história menciona que o livro era sobre jardinagem."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João pegou um trem matinal para a cidade para uma entrevista de emprego. Seu trem atrasou quinze minutos devido à manutenção dos trilhos. Por que o trem atrasou?",
                options: ["Manutenção dos trilhos", "Uma forte tempestade", "Uma queda de energia", "Um membro da tripulação ausente"],
                correctAnswer: "Manutenção dos trilhos",
                explanation: "A história diz que o atraso foi devido à manutenção dos trilhos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana foi ao centro de jardinagem comprar rosas vermelhas. Elas estavam esgotadas, então ela comprou cravos cor de rosa. Que flor Ana acabou comprando?",
                options: ["Cravos cor de rosa", "Rosas vermelhas", "Tulipas amarelas", "Lírios brancos"],
                correctAnswer: "Cravos cor de rosa",
                explanation: "A história diz que Ana comprou cravos cor de rosa."
            )
        ]
    )

    // MARK: - Sequências Numéricas
    private static let numberSequences = Exercise(
        id: UUID(),
        title: "Sequências Numéricas",
        instructions: "Encontre o próximo número na sequência.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "2, 4, 6, 8, ___",
                options: ["9", "10", "11", "12"],
                correctAnswer: "10",
                explanation: "A sequência aumenta de 2 em 2."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "5, 10, 15, 20, ___",
                options: ["21", "22", "25", "30"],
                correctAnswer: "25",
                explanation: "A sequência aumenta de 5 em 5."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "10, 20, 30, 40, ___",
                options: ["45", "50", "60", "70"],
                correctAnswer: "50",
                explanation: "A sequência aumenta de 10 em 10."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "3, 6, 9, 12, ___",
                options: ["13", "14", "15", "16"],
                correctAnswer: "15",
                explanation: "A sequência aumenta de 3 em 3."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "9, 8, 7, 6, ___",
                options: ["4", "5", "7", "8"],
                correctAnswer: "5",
                explanation: "A sequência diminui de 1 em 1."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "20, 18, 16, 14, ___",
                options: ["12", "13", "10", "15"],
                correctAnswer: "12",
                explanation: "A sequência diminui de 2 em 2."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "1, 3, 5, 7, ___",
                options: ["8", "9", "10", "11"],
                correctAnswer: "9",
                explanation: "A sequência aumenta de 2 em 2 (números ímpares)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "4, 8, 12, 16, ___",
                options: ["18", "20", "22", "24"],
                correctAnswer: "20",
                explanation: "A sequência aumenta de 4 em 4."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "50, 45, 40, 35, ___",
                options: ["25", "28", "30", "32"],
                correctAnswer: "30",
                explanation: "A sequência diminui de 5 em 5."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "100, 90, 80, 70, ___",
                options: ["50", "60", "65", "75"],
                correctAnswer: "60",
                explanation: "A sequência diminui de 10 em 10."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "11, 22, 33, 44, ___",
                options: ["50", "53", "55", "66"],
                correctAnswer: "55",
                explanation: "A sequência aumenta de 11 em 11."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "8, 10, 12, 14, ___",
                options: ["15", "16", "17", "18"],
                correctAnswer: "16",
                explanation: "A sequência aumenta de 2 em 2."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "12, 15, 18, 21, ___",
                options: ["22", "23", "24", "25"],
                correctAnswer: "24",
                explanation: "A sequência aumenta de 3 em 3."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "30, 27, 24, 21, ___",
                options: ["18", "19", "20", "17"],
                correctAnswer: "18",
                explanation: "A sequência diminui de 3 em 3."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "7, 14, 21, 28, ___",
                options: ["30", "32", "35", "42"],
                correctAnswer: "35",
                explanation: "A sequência aumenta de 7 em 7."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "40, 36, 32, 28, ___",
                options: ["20", "24", "26", "27"],
                correctAnswer: "24",
                explanation: "A sequência diminui de 4 em 4."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "6, 12, 18, 24, ___",
                options: ["26", "28", "30", "32"],
                correctAnswer: "30",
                explanation: "A sequência aumenta de 6 em 6."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "15, 20, 25, 30, ___",
                options: ["31", "32", "35", "40"],
                correctAnswer: "35",
                explanation: "A sequência aumenta de 5 em 5."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "90, 80, 70, 60, ___",
                options: ["40", "50", "55", "45"],
                correctAnswer: "50",
                explanation: "A sequência diminui de 10 em 10."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "13, 15, 17, 19, ___",
                options: ["20", "21", "22", "23"],
                correctAnswer: "21",
                explanation: "A sequência aumenta de 2 em 2."
            )
        ]
    )

    // MARK: - Causa e Efeito
    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "Causa e Efeito",
        instructions: "Escolha o resultado mais provável para cada situação.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Você deixa sorvete na bancada da cozinha por duas horas em um dia quente. O que acontece?",
                options: ["Fica mais duro", "Ele derrete", "Ele muda de cor", "Ele desaparece"],
                correctAnswer: "Ele derrete",
                explanation: "O calor derrete o sorvete."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você se esquece de regar sua planta por três semanas. Qual é o resultado mais provável?",
                options: ["Ela cresce flores", "Fica verde", "Ele murcha e seca", "Fica azul"],
                correctAnswer: "Ele murcha e seca",
                explanation: "Plantas precisam de água para sobreviver. Sem água, murcham e secam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Uma nuvem escura de tempestade bloqueia o sol e um trovão ressoa. O que provavelmente acontecerá a seguir?",
                options: ["Vai chover", "Vai ficar mais quente", "A neve cairá imediatamente", "As estrelas vão aparecer"],
                correctAnswer: "Vai chover",
                explanation: "Nuvens escuras e trovões indicam chuva por vir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você deixa cair uma tigela de vidro sobre um piso de cerâmica duro. Qual é o resultado mais provável?",
                options: ["Ele salta de volta", "Ele muda de cor", "Ele se quebra em pedaços", "Se transforma em água"],
                correctAnswer: "Ele se quebra em pedaços",
                explanation: "O vidro é frágil e se quebra ao cair no chão duro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você coloca uma fatia de pão na torradeira e deixa na posição mais alta. O que acontece?",
                options: ["Fica encharcado", "Queima e fica preto", "Fica macio e branco", "Ele desaparece"],
                correctAnswer: "Queima e fica preto",
                explanation: "Calor excessivo queima o pão e o deixa preto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você deixa os faróis do carro acesos durante a noite. O que acontecerá pela manhã?",
                options: ["O carro vai mais rápido", "A bateria vai acabar", "O carro vai mudar de cor", "O motor dará partida imediatamente"],
                correctAnswer: "A bateria vai acabar",
                explanation: "Luzes acesas drenam a bateria do carro durante a noite."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Uma forte tempestade de neve cai durante a noite, depositando quinze centímetros de neve. O que acontece com as estradas?",
                options: ["Elas ficam secas", "Elas ficam escorregadias e cobertas de neve", "Elas ficam verdes", "Elas evaporam"],
                correctAnswer: "Elas ficam escorregadias e cobertas de neve",
                explanation: "Neve acumulada torna as estradas perigosas e escorregadias."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você coloca uma bandeja cheia de água no freezer. O que acontece depois de algumas horas?",
                options: ["A água ferve", "A água se transforma em gelo", "A água evapora", "A água muda de cor"],
                correctAnswer: "A água se transforma em gelo",
                explanation: "O freezer congela a água, transformando-a em gelo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você calça meias grossas de lã e botas pesadas em um dia quente de verão. O que acontece com seus pés?",
                options: ["Eles sentem frio", "Eles ficam secos", "Eles ficam quentes e suados", "Eles ficam azuis"],
                correctAnswer: "Eles ficam quentes e suados",
                explanation: "Roupas quentes no verão causam calor excessivo e suor nos pés."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Uma pessoa não dorme por 24 horas seguidas. Como ela provavelmente se sentirá?",
                options: ["Muito energizada", "Cansada e com sono", "Com fome", "Extremamente feliz"],
                correctAnswer: "Cansada e com sono",
                explanation: "A privação de sono causa cansaço extremo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você adiciona açúcar a uma xícara de chá quente e mexe. O que acontece com o açúcar?",
                options: ["Se transforma em gelo", "Ele desaparece do copo", "Dissolve-se no chá", "Isso queima"],
                correctAnswer: "Dissolve-se no chá",
                explanation: "O açúcar se dissolve em líquidos quentes quando mexido."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você sai sob uma forte chuva sem guarda-chuva ou capa de chuva. Qual é o resultado?",
                options: ["Você fica seco", "Suas roupas ficam encharcadas", "Você fica azul", "Você se sente mais quente"],
                correctAnswer: "Suas roupas ficam encharcadas",
                explanation: "Sem proteção, a chuva molha completamente as roupas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você sopra ar em um balão até que fique cheio demais. O que acontece?",
                options: ["Ele voa para a lua", "Ele estoura", "Se transforma em um pássaro", "Encolhe"],
                correctAnswer: "Ele estoura",
                explanation: "Muita pressão de ar excede a capacidade do balão, fazendo com que ele estoure."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você apaga todas as luzes de uma sala sem janelas à noite. O que acontece?",
                options: ["A sala fica mais iluminada", "A sala fica completamente escura", "A sala fica verde", "A sala se enche de luz"],
                correctAnswer: "A sala fica completamente escura",
                explanation: "Sem janelas e sem luzes, nenhuma fonte de luz ilumina a sala."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você não estuda nem se prepara para um exame difícil. Qual é o resultado mais provável?",
                options: ["Você obtém uma pontuação perfeita", "Você tem um desempenho ruim", "Você esquece seu nome", "O exame foi cancelado"],
                correctAnswer: "Você tem um desempenho ruim",
                explanation: "Sem preparo, é difícil ter um bom desempenho em um exame difícil."
            )
        ]
    )

    // MARK: - Que Emoção É Essa?
    private static let emotions = Exercise(
        id: UUID(),
        title: "Que Emoção É Essa?",
        instructions: "Escolha a emoção que melhor descreve como a pessoa se sente na situação.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Ana acaba de descobrir que ganhou o primeiro lugar numa competição. Como ela se sente?",
                options: ["Triste", "Irritada", "Feliz", "Assustada"],
                correctAnswer: "Feliz",
                explanation: "Ganhar uma competição é uma conquista que causa alegria."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João ouve um barulho estranho e alto lá embaixo no meio da noite. Como ele se sente?",
                options: ["Feliz", "Assustado", "Entediado", "Animado"],
                correctAnswer: "Assustado",
                explanation: "Barulhos inesperados à noite podem causar medo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A melhor amiga de Maria está se mudando para outro estado distante. Como Maria se sente?",
                options: ["Triste", "Irritada", "Animada", "Ciumenta"],
                correctAnswer: "Triste",
                explanation: "A partida de uma amiga querida causa tristeza."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Alguém atravessa uma longa fila na frente de João na loja. Como João se sente?",
                options: ["Feliz", "Assustado", "Irritado", "Envergonhado"],
                correctAnswer: "Irritado",
                explanation: "Ser desrespeitado em uma fila causa irritação."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Emily está prestes a fazer um discurso diante de um grande público. Como ela se sente?",
                options: ["Nervosa", "Entediada", "Triste", "Irritada"],
                correctAnswer: "Nervosa",
                explanation: "Falar em público para muitas pessoas causa nervosismo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O voo de João foi cancelado, atrasando em dois dias suas férias. Como ele se sente?",
                options: ["Frustrado", "Feliz", "Assustado", "Orgulhoso"],
                correctAnswer: "Frustrado",
                explanation: "Ter planos cancelados causa frustração."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O filho de Lisa se formou na universidade com honras. Como Lisa se sente?",
                options: ["Orgulhosa", "Ciumenta", "Triste", "Assustada"],
                correctAnswer: "Orgulhosa",
                explanation: "A conquista de um filho traz orgulho aos pais."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Um funcionário explica pela quarta vez um formulário complicado, mas João ainda não consegue entender. Como João se sente?",
                options: ["Confuso", "Feliz", "Animado", "Orgulhoso"],
                correctAnswer: "Confuso",
                explanation: "Não conseguir entender algo após várias tentativas causa confusão."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manuel está esperando em uma sala de espera silenciosa há mais de duas horas, sem nada para ler. Como ele se sente?",
                options: ["Entediado", "Assustado", "Irritado", "Feliz"],
                correctAnswer: "Entediado",
                explanation: "Esperar sem nada para fazer por muito tempo causa tédio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A família de Ellen deu a ela uma festa surpresa de aniversário com todos os seus amigos. Como ela se sente?",
                options: ["Surpresa", "Irritada", "Triste", "Assustada"],
                correctAnswer: "Surpresa",
                explanation: "Uma festa surpresa provoca sentimento de surpresa e alegria."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Um cachorro de rua saiu correndo e latiu agressivamente para Karen durante sua caminhada. Como ela se sente?",
                options: ["Assustada", "Feliz", "Entediada", "Orgulhosa"],
                correctAnswer: "Assustada",
                explanation: "Um cão agressivo causa medo e susto."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "William perdeu sua aliança de casamento enquanto fazia jardinagem. Como ele se sente?",
                options: ["Chateado", "Animado", "Entediado", "Calmo"],
                correctAnswer: "Chateado",
                explanation: "Perder um objeto de valor sentimental causa tristeza e angústia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Patrícia recebeu dos netos um lindo cartão e flores. Como ela se sente?",
                options: ["Amada", "Irritada", "Assustada", "Confusa"],
                correctAnswer: "Amada",
                explanation: "Gestos gentis da família fazem a pessoa se sentir amada e apreciada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O supermercado não tinha o pão específico que Manuel queria, por isso teve que comprar outra marca. Como ele se sente?",
                options: ["Um pouco decepcionado", "Aterrorizado", "Furioso", "Em êxtase"],
                correctAnswer: "Um pouco decepcionado",
                explanation: "Não encontrar o produto desejado causa uma leve decepção."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João passou a tarde inteira construindo uma estante e ficou perfeita. Como ele se sente?",
                options: ["Satisfeito", "Triste", "Assustado", "Entediado"],
                correctAnswer: "Satisfeito",
                explanation: "Completar um projeto com sucesso traz satisfação."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana deixou cair acidentalmente uma bandeja de bebidas em um restaurante tranquilo. Como ela se sente?",
                options: ["Envergonhada", "Feliz", "Irritada", "Entediada"],
                correctAnswer: "Envergonhada",
                explanation: "Fazer algo embaraçoso em público causa vergonha."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manuel fará sua primeira viagem ao Havaí amanhã de manhã. Como ele se sente?",
                options: ["Animado", "Triste", "Irritado", "Entediado"],
                correctAnswer: "Animado",
                explanation: "Uma viagem esperada traz animação e entusiasmo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O gato de Susan voltou para casa em segurança depois de desaparecer por três dias. Como ela se sente?",
                options: ["Aliviada", "Irritada", "Assustada", "Confusa"],
                correctAnswer: "Aliviada",
                explanation: "Encontrar um animal de estimação desaparecido traz alívio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A conexão com a internet cai a cada cinco minutos enquanto João tenta trabalhar. Como ele se sente?",
                options: ["Irritado", "Assustado", "Feliz", "Entediado"],
                correctAnswer: "Irritado",
                explanation: "Interrupções frequentes no trabalho causam irritação."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana tomou um banho demorado e quente depois de um dia estressante. Como ela se sente?",
                options: ["Descontraída", "Irritada", "Assustada", "Nervosa"],
                correctAnswer: "Descontraída",
                explanation: "Um banho quente após um dia difícil traz relaxamento e descontração."
            )
        ]
    )

    // MARK: - O que Há de Errado Aqui?
    private static let whatsWrong = Exercise(
        id: UUID(),
        title: "O que Há de Errado Aqui?",
        instructions: "Identifique o que está errado em cada situação.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "João tomou café da manhã à meia-noite antes de ir para a cama.",
                options: ["As pessoas não comem comida", "O café da manhã é uma refeição matinal, não de meia-noite", "João não deveria dormir", "Meia-noite é à tarde"],
                correctAnswer: "O café da manhã é uma refeição matinal, não de meia-noite",
                explanation: "O café da manhã é uma refeição do período da manhã, não da meia-noite."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O cachorro latiu para o carteiro e depois voou por cima do telhado para pegar um pássaro.",
                options: ["Cachorros não latem", "Os cães não podem voar", "Os carteiros não entregam correspondência", "Os pássaros não voam"],
                correctAnswer: "Os cães não podem voar",
                explanation: "Cachorros não têm capacidade de voar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana vestiu o casaco quente de inverno e as luvas para nadar na piscina exterior durante o mês de julho.",
                options: ["As pessoas não nadam em julho", "Você não usa casaco de inverno e luvas para nadar", "Piscinas exteriores não existem", "Casacos são usados no verão"],
                correctAnswer: "Você não usa casaco de inverno e luvas para nadar",
                explanation: "Roupas de inverno não são adequadas para nadar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O relógio na parede bateu treze horas, então João sabia que era hora do café da manhã.",
                options: ["Os relógios não ficam nas paredes", "Os relógios padrão só vão até doze horas", "Café não é uma bebida matinal", "João não toma café"],
                correctAnswer: "Os relógios padrão só vão até doze horas",
                explanation: "Relógios analógicos e digitais padrão não marcam 13 horas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Paul atravessou de bicicleta o lago profundo para visitar seu amigo.",
                options: ["Bicicletas não podem andar na água", "Lagos não têm peixes", "Amigos não se visitam", "Bicicletas não têm pedais"],
                correctAnswer: "Bicicletas não podem andar na água",
                explanation: "Bicicletas são veículos terrestres e não funcionam na água."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana ferveu alguns cubos de gelo em uma panela para fazer água gelada.",
                options: ["Cubos de gelo não existem", "Ferver cubos de gelo os torna água quente, não fria", "Panelas não podem conter gelo", "Beber água não é saudável"],
                correctAnswer: "Ferver cubos de gelo os torna água quente, não fria",
                explanation: "Ferver derrete e aquece o gelo, produzindo água quente, não gelada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O peixe subiu na árvore para escapar do gato faminto.",
                options: ["Os peixes não podem subir em árvores", "Gatos não comem peixe", "As árvores não produzem folhas", "Os peixes vivem nas árvores"],
                correctAnswer: "Os peixes não podem subir em árvores",
                explanation: "Peixes vivem na água e não têm capacidade de subir em árvores."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "João usou um garfo para tomar sua canja de galinha.",
                options: ["Os garfos não podem conter sopa líquida", "Sopa não é feita de frango", "João deveria usar uma faca", "Sopa não se come com talheres"],
                correctAnswer: "Os garfos não podem conter sopa líquida",
                explanation: "Garfos têm dentes e não conseguem conter líquidos como a sopa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Como estava chovendo muito, Ana pendurou as roupas molhadas no varal externo para secar.",
                options: ["A chuva não molha as coisas", "As roupas não secam lá fora na chuva", "Varais são usados apenas dentro de casa", "Ana não usa roupa"],
                correctAnswer: "As roupas não secam lá fora na chuva",
                explanation: "Roupas penduradas na chuva ficam ainda mais molhadas, não secam."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O avião pousou em segurança no aeroporto e todos os passageiros desceram nos trilhos do trem.",
                options: ["Aviões não pousam em aeroportos", "Passageiros não viajam em aviões", "Os aeroportos não possuem trilhos de trem nos portões", "Os trens não circulam nos trilhos"],
                correctAnswer: "Os aeroportos não possuem trilhos de trem nos portões",
                explanation: "Aeroportos têm corredores e portões, não trilhos de trem."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ana ligou o ar condicionado para deixar a sala mais quente.",
                options: ["Os aparelhos de ar condicionado resfriam os ambientes, eles não os aquecem", "As salas não têm paredes", "Ana não tem casa", "Ar condicionado não consome eletricidade"],
                correctAnswer: "Os aparelhos de ar condicionado resfriam os ambientes, eles não os aquecem",
                explanation: "Aparelhos de ar condicionado resfriam o ambiente, não aquecem."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O coelho perseguiu o grande lobo cinzento pela floresta.",
                options: ["Coelhos não vivem em florestas", "Lobos não correm", "Coelhos não perseguem lobos", "Lobos não são cinzentos"],
                correctAnswer: "Coelhos não perseguem lobos",
                explanation: "Na natureza, lobos perseguem coelhos, e não o contrário."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manuel comprou um par de sapatos de couro para as mãos, para mantê-las aquecidas no inverno.",
                options: ["Os sapatos são usados nos pés e não nas mãos", "Couro não é usado para sapatos", "As mãos não ficam frias", "O inverno não é frio"],
                correctAnswer: "Os sapatos são usados nos pés e não nas mãos",
                explanation: "Sapatos são calçados para os pés; para aquecer as mãos usam-se luvas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O sol nasceu à meia-noite, iluminando o céu da manhã.",
                options: ["O sol nasce de manhã, não à meia-noite", "Meia-noite é à tarde", "O sol não está brilhante", "A manhã está escura"],
                correctAnswer: "O sol nasce de manhã, não à meia-noite",
                explanation: "O sol nasce pela manhã; à meia-noite o céu está escuro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Maria ligou a televisão para ouvir sua rádio preferida.",
                options: ["As televisões mostram vídeo, não são rádios", "Rádios não tocam música", "Maria não gosta de música", "As televisões não têm alto-falantes"],
                correctAnswer: "As televisões mostram vídeo, não são rádios",
                explanation: "Televisões são aparelhos de vídeo; para ouvir rádio usa-se um rádio."
            )
        ]
    )

    // MARK: - Perguntas de Sim ou Não
    private static let yesNoQuestions = Exercise(
        id: UUID(),
        title: "Perguntas de Sim ou Não",
        instructions: "Escolha Sim ou Não para cada pergunta.",
        section: .cognition,
        type: .yesNo,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "O Consulado Geral do Brasil fica em São Francisco?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Consulado Geral do Brasil na Califórnia está localizado na cidade de São Francisco."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O pão de queijo é feito originalmente com farinha de trigo?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O pão de queijo é feito tradicionalmente com polvilho (doce ou azedo), que é derivado da mandioca, sendo livre de glúten."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Ponte Golden Gate fica localizada em Los Angeles?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A Golden Gate Bridge fica em São Francisco, não em Los Angeles."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "É possível encontrar guaraná Antarctica em supermercados brasileiros em Boston ou São José?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Supermercados brasileiros e latinos na Califórnia importam guaraná do Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O português é a língua oficial falada em Portugal e no Brasil?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O português é a língua oficial de ambos os países, embora com diferenças de sotaque e vocabulário."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O estado da Califórnia faz fronteira com o México ao sul?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A Califórnia faz fronteira com o México ao sul."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O brigadeiro é um doce típico de festas brasileiras feito com chocolate e leite condensado?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O brigadeiro é o doce mais popular das festas brasileiras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Rio Amazonas é o maior rio do mundo em volume de água?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Rio Amazonas está localizado na América do Sul e tem o maior volume de água do planeta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A capital da Califórnia é a cidade de Los Angeles?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A capital da Califórnia é Sacramento."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Os imigrantes brasileiros na Bay Area costumam celebrar a Festa Junina em junho?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Comunidades brasileiras no exterior mantêm tradições como as Festas Juninas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O açaí é uma fruta nativa da floresta amazônica brasileira?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O açaí cresce em palmeiras na região amazônica."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Califórnia é o estado mais populoso dos Estados Unidos?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A Califórnia tem a maior população entre todos os estados americanos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A feijoada brasileira tradicional é feita com feijão branco?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A feijoada tradicional brasileira é feita com feijão preto e carnes de porco."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Monte Shasta é um vulcão localizado no norte da Califórnia?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Monte Shasta é um vulcão ativo temporariamente adormecido na cordilheira das Cascatas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Disneylândia original fica localizada na cidade de Anaheim, na Califórnia?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A Disneyland original foi inaugurada em Anaheim em 1955."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A caipirinha é preparada tradicionalmente com tequila?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A caipirinha é feita com cachaça, limão, açúcar e gelo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de San Diego fica perto da fronteira com o México?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "San Diego faz fronteira direta com Tijuana, no México."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O churrasco brasileiro costuma incluir cortes como a picanha?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A picanha é o corte de carne mais famoso e apreciado no churrasco brasileiro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Vale do Silício é mundialmente conhecido como um centro de tecnologia e inovação?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Localizado na região sul da Bay Area de São Francisco, abriga grandes empresas de tecnologia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O drible é um movimento comum no futebol, esporte muito popular no Brasil?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O futebol é considerado o esporte nacional do Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Oceano Atlântico banha a costa oeste da Califórnia?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A costa oeste da Califórnia é banhada pelo Oceano Pacífico; o Atlântico banha o Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O guaraná é uma fruta energética originária da Amazônia?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O guaraná é amplamente consumido no Brasil por suas propriedades estimulantes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Parque Nacional de Yosemite fica localizado no estado de Nevada?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O Parque de Yosemite fica inteiramente na Califórnia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Muitos brasileiros que vivem na Califórnia trabalham no setor de tecnologia no Vale do Silício?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A comunidade brasileira na Bay Area tem forte presença no setor tecnológico e de serviços."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O samba é um gênero musical e de dança de origem africana muito forte no Brasil?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O samba é um dos maiores símbolos culturais do Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O deserto de Mojave fica localizado no norte da Califórnia?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O deserto de Mojave fica no sul da Califórnia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O pastel de feira é um salgado frito muito comum no Brasil?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Pastéis de vento recheados são clássicos das feiras livres brasileiras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de Sacramento é mais populosa do que Los Angeles?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Los Angeles é de longe a maior cidade da Califórnia em termos de população."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A canoa havaiana ou canoagem é um esporte que vem ganhando muitos adeptos no litoral brasileiro?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A prática de esportes náuticos é muito comum no extenso litoral do Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O pão francês brasileiro é comumente recheado com doce de leite antes de assar?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O pão francês é um pão salgado simples de casca crocante consumido no café da manhã."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A rodovia Pacific Coast Highway (PCH) corre ao longo do litoral da Califórnia?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A famosa Rota 1 (PCH) oferece vistas espetaculares da costa do Pacífico."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O chimarrão é uma bebida quente feita com erva-mate muito comum no sul do Brasil?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O chimarrão é tradicional no Rio Grande do Sul, Santa Catarina e Paraná."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de Napa Valley é famosa por sua produção de suco de laranja?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Napa Valley é internacionalmente famosa por suas vinícolas e produção de vinho."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O acarajé é uma especialidade gastronômica da culinária baiana feita com feijão-fradinho?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O acarajé é frito no azeite de dendê e recheado com vatapá e caruru."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Parque Balboa é uma famosa atração cultural e de lazer na cidade de San Francisco?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O Balboa Park fica na cidade de San Diego."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A bossa nova é um estilo de música brasileira que ganhou fama internacional com 'Garota de Ipanema'?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A bossa nova surgiu no final da década de 1950 no Rio de Janeiro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O estado da Califórnia é conhecido como 'The Golden State'?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O apelido vem da corrida do ouro de 1848 e dos campos de papoulas douradas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A coxinha é um salgado brasileiro recheado tradicionalmente com carne moída?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A coxinha tradicional é recheada com frango desfiado."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Lago Tahoe é dividido entre os estados da Califórnia e Nevada?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O lago fica na fronteira dos dois estados, no alto das montanhas de Sierra Nevada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O maracujá é conhecido no Brasil por suas propriedades calmantes?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O suco de maracujá é popularmente consumido para ajudar a relaxar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Ilha de Alcatraz fica localizada na Baía de São Francisco?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A antiga prisão federal de Alcatraz fica em uma ilha na baía de SF."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O pão de mel brasileiro costuma levar mel na massa e cobertura de chocolate?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "É um doce macio recheado ou simples muito popular no Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de Los Angeles é famosa pela indústria cinematográfica de Hollywood?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Hollywood é o distrito histórico de Los Angeles conhecido mundialmente pelo cinema."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O curau é um doce cremoso brasileiro feito à base de milho verde?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O curau é uma sobremesa tradicional das festas juninas do interior."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Universidade de Stanford fica localizada na cidade de Berkeley?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Stanford fica em Stanford/Palo Alto; a UC Berkeley fica em Berkeley."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O chuchu é um vegetal de sabor muito forte e marcante usado na culinária brasileira?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O chuchu tem sabor muito suave e neutro, abrindo espaço para o tempero dos outros alimentos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A ponte que liga San Francisco a Oakland é chamada de Golden Gate?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A ponte que liga SF a Oakland é a Bay Bridge; a Golden Gate liga SF ao Condado de Marin."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O guaraná em pó é muito usado no Brasil misturado a sucos e açaí para dar energia?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O pó de guaraná é rico em cafeína e muito usado como estimulante natural."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Vale da Morte (Death Valley) é um dos lugares mais quentes e secos da América do Norte?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Localizado no deserto da Califórnia, detém recordes de temperaturas extremas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A pamonha é uma comida típica brasileira feita com milho verde ralado e cozido na palha?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A pamonha pode ser doce ou salgada, muito popular no interior brasileiro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de San Jose é considerada a maior cidade do Vale do Silício em população?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "San Jose é a terceira maior cidade da Califórnia e o coração urbano do Vale do Silício."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O tacacá é um prato típico da culinária da região norte do Brasil servido bem quente?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O tacacá leva tucupi, goma de mandioca, jambu e camarão seco."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O sequoia-gigante é a maior árvore do mundo em termos de volume de madeira?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Parque Nacional das Sequoias na Califórnia abriga a árvore General Sherman."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O brigadeiro tradicional leva leite de coco em sua receita básica?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O brigadeiro tradicional leva leite condensado, chocolate em pó e manteiga."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Baía de São Francisco abriga a famosa ponte de pedágio chamada Richmond-San Rafael Bridge?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A ponte Richmond-San Rafael atravessa a parte norte da baía."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O futebol de areia é um esporte praticado comumente nas praias do litoral brasileiro?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Brasil é uma das maiores potências mundiais no futebol de areia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A ilha de Catalina fica situada no litoral sul da Califórnia?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Santa Catalina Island é um destino turístico popular ao largo de Los Angeles."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O empadão é uma torta salgada brasileira com massa podre muito recheada?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O empadão de frango ou palmito é um prato de almoço de domingo comum no Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O bonde histórico de São Francisco é movido por motores elétricos individuais em cada vagão?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Os famosos bondes de SF são puxados por cabos subterrâneos de aço em movimento contínuo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Romeu e Julieta é uma combinação brasileira de queijo com goiabada?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A mistura de queijo minas com goiabada cascão é uma sobremesa tradicional brasileira."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Monte Whitney é o ponto mais alto da Califórnia e de todos os Estados Unidos continentais?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Monte Whitney ergue-se a mais de 4.400 metros de altitude na Sierra Nevada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O caldinho de feijão é frequentemente servido como aperitivo em bares no Brasil?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "É um caldo quente temperado servido em copo, comum em botecos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O Muir Woods National Monument protege uma floresta de sequoias costeiras perto de San Francisco?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "Muir Woods fica no Condado de Marin, a poucos minutos ao norte da Golden Gate Bridge."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O beijinho é um doce tradicional brasileiro feito com coco ralado?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O beijinho é o parceiro tradicional do brigadeiro nas festas infantis brasileiras."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O aeroporto internacional de Los Angeles é amplamente conhecido pela sigla SFO?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "O aeroporto de Los Angeles é LAX; SFO é o aeroporto de São Francisco."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cachaça é uma bebida alcoólica destilada a partir do caldo de cana-de-açúcar fermentado?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A cachaça é a base da caipirinha e o destilado mais popular do Brasil."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de Sausalito fica localizada ao sul de San Diego?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "Sausalito fica logo ao norte de São Francisco, atravessando a Golden Gate Bridge."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O quindim é um doce amarelo brilhante brasileiro feito com gemas de ovo, açúcar e coco ralado?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O quindim tem consistência brilhante e macia na parte superior e coco na base."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A cidade de Santa Cruz na Califórnia é famosa por sua cultura de surfe e seu calçadão histórico?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Santa Cruz Beach Boardwalk é o parque de diversões à beira-mar mais antigo da Califórnia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A canjica (ou curau) brasileira é feita com sementes de girassol torradas?",
                options: ["Yes", "No"],
                correctAnswer: "No",
                explanation: "A canjica é feita com grãos de milho branco ou amarelo cozidos com leite e açúcar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A Universidade de Stanford foi fundada em homenagem ao filho do ex-governador da Califórnia Leland Stanford?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A universidade foi estabelecida em 1885 como memorial a Leland Stanford Jr."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O vatapá é um prato cremoso típico da culinária baiana engrossado com pão ou farinha de trigo?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O vatapá leva camarões secos, leite de coco e azeite de dendê."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A rodovia Interstate 5 corta a Califórnia de norte a sul pelo Vale Central?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "A I-5 liga a fronteira do México à fronteira do Canadá, passando pelo interior da Califórnia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O bolo de rolo é uma sobremesa tradicional de Pernambuco feita de camadas finas de massa e goiabada?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O bolo de rolo é patrimônio imaterial de Pernambuco e assemelha-se a um rocambole bem fino."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "A península de Monterey é conhecida por sua famosa reserva marinha e aquário público?",
                options: ["Yes", "No"],
                correctAnswer: "Yes",
                explanation: "O Monterey Bay Aquarium é um dos mais renomados centros de pesquisa e exposição marinha do mundo."
            )
        ]
    )

    // MARK: - Analogias
    private static let analogies = Exercise(
        id: UUID(),
        title: "Analogias",
        instructions: "Escolha a palavra correta para completar a analogia.",
        section: .cognition,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Pão de queijo : Queijo :: Brigadeiro : Chocolate",
                options: ["Chocolate", "Água", "Sal", "Pimenta"],
                correctAnswer: "Chocolate",
                explanation: "O pão de queijo leva queijo em sua receita, enquanto o brigadeiro leva chocolate."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sol : Dia :: Lua : Noite",
                options: ["Noite", "Nuvem", "Estrela", "Céu"],
                correctAnswer: "Noite",
                explanation: "O sol brilha durante o dia, e a lua aparece principalmente à noite."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Carro : Estrada :: Barco : Rio",
                options: ["Rio", "Céu", "Trilho", "Floresta"],
                correctAnswer: "Rio",
                explanation: "O carro anda na estrada, e o barco navega no rio ou no mar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Peixe : Água :: Pássaro : Ar",
                options: ["Ar", "Terra", "Ninho", "Gaiola"],
                correctAnswer: "Ar",
                explanation: "O peixe vive e nada na água, o pássaro voa no ar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Livro : Ler :: Música : Ouvir",
                options: ["Ouvir", "Escrever", "Cantar", "Tocar"],
                correctAnswer: "Ouvir",
                explanation: "Um livro serve para ler, e a música serve para ouvir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limão : Azedo :: Açúcar : Doce",
                options: ["Doce", "Salgado", "Amargo", "Picante"],
                correctAnswer: "Doce",
                explanation: "O limão tem sabor azedo, o açúcar tem sabor doce."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Garfo : Comer :: Caneta : Escrever",
                options: ["Escrever", "Desenhar", "Ler", "Pintar"],
                correctAnswer: "Escrever",
                explanation: "Usa-se o garfo para comer e a caneta para escrever."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Médico : Hospital :: Professor : Escola",
                options: ["Escola", "Escritório", "Teatro", "Tribunal"],
                correctAnswer: "Escola",
                explanation: "O médico trabalha no hospital, e o professor trabalha na escola."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Geladeira : Frio :: Fogão : Quente",
                options: ["Quente", "Sujo", "Limpo", "Escuro"],
                correctAnswer: "Quente",
                explanation: "A geladeira resfria os alimentos, e o fogão os esquenta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sapato : Pé :: Chapéu : Cabeça",
                options: ["Cabeça", "Mão", "Braço", "Pescoço"],
                correctAnswer: "Cabeça",
                explanation: "Usa-se o sapato no pé e o chapéu na cabeça."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Brasil : Brasília :: EUA : Washington",
                options: ["Washington", "Nova York", "Miami", "Boston"],
                correctAnswer: "Washington",
                explanation: "Brasília é a capital do Brasil, e Washington D.C. é a capital dos EUA."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Borracha : Apagar :: Lápis : Escrever",
                options: ["Escrever", "Apontar", "Desenhar", "Pintar"],
                correctAnswer: "Escrever",
                explanation: "A borracha serve para apagar e o lápis serve para escrever."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pão : Padaria :: Livro : Livraria",
                options: ["Livraria", "Biblioteca", "Editora", "Escola"],
                correctAnswer: "Livraria",
                explanation: "O pão é comprado na padaria, e o livro é comprado na livraria."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chuva : Molhar :: Fogo : Queimar",
                options: ["Queimar", "Esfriar", "Iluminar", "Apagar"],
                correctAnswer: "Queimar",
                explanation: "A chuva serve para molhar e o fogo serve para queimar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cachorro : Latir :: Gato : Miar",
                options: ["Miar", "Rugir", "Cantar", "Zumbir"],
                correctAnswer: "Miar",
                explanation: "O cachorro late e o gato mia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Árvore : Folha :: Flor : Pétala",
                options: ["Pétala", "Raiz", "Caule", "Fruto"],
                correctAnswer: "Pétala",
                explanation: "A folha faz parte da árvore, e a pétala faz parte da flor."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Inverno : Frio :: Verão : Calor",
                options: ["Calor", "Chuva", "Nuvem", "Vento"],
                correctAnswer: "Calor",
                explanation: "O inverno é associado ao frio, e o verão é associado ao calor."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Feijão : Preto :: Arroz : Branco",
                options: ["Branco", "Amarelo", "Vermelho", "Verde"],
                correctAnswer: "Branco",
                explanation: "O feijão tradicional da feijoada é preto, e o arroz comum é branco."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cachaça : Caipirinha :: Tequila : Margarita",
                options: ["Margarita", "Mojito", "Martini", "Whisky"],
                correctAnswer: "Margarita",
                explanation: "A cachaça é a base da caipirinha, e a tequila é a base da margarita."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "São Francisco : Bay Bridge :: Nova York : Brooklyn Bridge",
                options: ["Brooklyn Bridge", "Golden Gate", "Manhattan Bridge", "Queensboro"],
                correctAnswer: "Brooklyn Bridge",
                explanation: "A Bay Bridge liga San Francisco a Oakland, e a Brooklyn Bridge liga o Brooklyn a Manhattan."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Martelo : Prego :: Chave de fenda : Parafuso",
                options: ["Parafuso", "Madeira", "Ferro", "Parede"],
                correctAnswer: "Parafuso",
                explanation: "O martelo fixa o prego, e a chave de fenda aperta o parafuso."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Orelha : Ouvir :: Olho : Ver",
                options: ["Ver", "Tocar", "Cheirar", "Sentir"],
                correctAnswer: "Ver",
                explanation: "A orelha é o órgão do ouvido, e o olho é o órgão da visão."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vinho : Uva :: Suco : Laranja",
                options: ["Laranja", "Água", "Açúcar", "Gelo"],
                correctAnswer: "Laranja",
                explanation: "O vinho é produzido a partir da uva, e o suco é feito de laranja."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Avião : Piloto :: Trem : Maquinista",
                options: ["Maquinista", "Motorista", "Marinheiro", "Condutor"],
                correctAnswer: "Maquinista",
                explanation: "O avião é guiado pelo piloto, e o trem pelo maquinista."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mel : Abelha :: Leite : Vaca",
                options: ["Vaca", "Cabra", "Ovelha", "Galinha"],
                correctAnswer: "Vaca",
                explanation: "O mel é produzido pela abelha, e o leite é produzido pela vaca."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dia : Acordar :: Noite : Dormir",
                options: ["Dormir", "Trabalhar", "Estudar", "Brincar"],
                correctAnswer: "Dormir",
                explanation: "O dia é o período para acordar, e a noite para dormir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Norte : Sul :: Leste : Oeste",
                options: ["Oeste", "Centro", "Nordeste", "Sudeste"],
                correctAnswer: "Oeste",
                explanation: "Norte é o oposto de Sul, e Leste é o oposto de Oeste."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Futebol : Chutar :: Basquete : Arremessar",
                options: ["Arremessar", "Correr", "Pular", "Bloquear"],
                correctAnswer: "Arremessar",
                explanation: "No futebol chuta-se a bola, no basquete arremessa-se na cesta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Mão : Luva :: Pé : Meia",
                options: ["Meia", "Sapato", "Sandália", "Bota"],
                correctAnswer: "Meia",
                explanation: "A luva protege a mão, e a meia protege o pé."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Pintor : Quadro :: Escritor : Livro",
                options: ["Livro", "Poema", "Artigo", "Rascunho"],
                correctAnswer: "Livro",
                explanation: "O pintor pinta um quadro, e o escritor escreve um livro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Janela : Vidro :: Parede : Tijolo",
                options: ["Tijolo", "Tinta", "Cimento", "Porta"],
                correctAnswer: "Tijolo",
                explanation: "A janela tem placas de vidro, e a parede é construída com tijolos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bebida : Copo :: Sopa : Prato fundo",
                options: ["Prato fundo", "Xícara", "Colher", "Garrafa"],
                correctAnswer: "Prato fundo",
                explanation: "A bebida é servida no copo, e a sopa no prato fundo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Elefante : Pesado :: Formiga : Leve",
                options: ["Leve", "Pequena", "Rápida", "Trabalhadora"],
                correctAnswer: "Leve",
                explanation: "O elefante é pesado, e a formiga é leve."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ponte : Rio :: Túnel : Montanha",
                options: ["Montanha", "Estrada", "Trilho", "Cidade"],
                correctAnswer: "Montanha",
                explanation: "A ponte cruza o rio, e o túnel atravessa a montanha."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sabão : Limpeza :: Sujeira : Poeira",
                options: ["Poeira", "Água", "Mancha", "Lixo"],
                correctAnswer: "Poeira",
                explanation: "O sabão limpa a sujeira, que muitas vezes é composta de poeira."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Roda : Carro :: Asas : Avião",
                options: ["Avião", "Barco", "Trem", "Bicicleta"],
                correctAnswer: "Avião",
                explanation: "A roda é parte do carro, e as asas do avião."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Goiabada : Goiaba :: Doce de leite : Leite",
                options: ["Leite", "Açúcar", "Coco", "Queijo"],
                correctAnswer: "Leite",
                explanation: "A goiabada é feita de goiaba, e o doce de leite é feito de leite."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Natação : Piscina :: Corrida : Pista",
                options: ["Pista", "Rua", "Parque", "Esteira"],
                correctAnswer: "Pista",
                explanation: "A natação é praticada na piscina, e a corrida na pista."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Queijo : Minas :: Goiabada : Cascão",
                options: ["Cascão", "Lata", "Pote", "Fatia"],
                correctAnswer: "Cascão",
                explanation: "Queijo minas é um tipo clássico de queijo, e goiabada cascão é um tipo clássico de goiabada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Teatro : Ator :: Cinema : Diretor",
                options: ["Diretor", "Espectador", "Câmera", "Roteirista"],
                correctAnswer: "Diretor",
                explanation: "No teatro a peça tem ator, e o filme no cinema tem diretor."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Tinta : Parede :: Verniz : Madeira",
                options: ["Madeira", "Chão", "Móvel", "Metal"],
                correctAnswer: "Madeira",
                explanation: "A tinta colore a parede, e o verniz protege a madeira."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Violão : Cordas :: Piano : Teclas",
                options: ["Teclas", "Martelos", "Pedais", "Cordas"],
                correctAnswer: "Teclas",
                explanation: "O violão tem cordas, e o piano tem teclas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Manteiga : Pão :: Molho : Macarrão",
                options: ["Macarrão", "Arroz", "Salada", "Carne"],
                correctAnswer: "Macarrão",
                explanation: "Passa-se manteiga no pão, e coloca-se molho no macarrão."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Bolo : Assar :: Coxinha : Fritar",
                options: ["Fritar", "Cozinhar", "Grelhar", "Assar"],
                correctAnswer: "Fritar",
                explanation: "O bolo vai ao forno para assar, e a coxinha vai para fritar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sal : Comida :: Açúcar : Café",
                options: ["Café", "Leite", "Suco", "Chá"],
                correctAnswer: "Café",
                explanation: "Usa-se sal para a comida, e açúcar para o café."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Dentista : Dentes :: Pediatra : Crianças",
                options: ["Crianças", "Bebês", "Idosos", "Olhos"],
                correctAnswer: "Crianças",
                explanation: "O dentista cuida dos dentes, e o pediatra das crianças."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Canteiro : Flores :: Horta : Verduras",
                options: ["Verduras", "Frutas", "Legumes", "Árvores"],
                correctAnswer: "Verduras",
                explanation: "No canteiro plantam-se flores, e na horta verdurinhas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Passaporte : Viagem :: Ingresso : Show",
                options: ["Show", "Teatro", "Cinema", "Estádio"],
                correctAnswer: "Show",
                explanation: "O passaporte serve para a viagem, e o ingresso para o show."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Garrafa : Tampa :: Caixa : Tampa",
                options: ["Tampa", "Papel", "Fita", "Plástico"],
                correctAnswer: "Tampa",
                explanation: "A garrafa fecha-se com a tampa, e a caixa também."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vela : Cera :: Copo : Vidro",
                options: ["Vidro", "Plástico", "Metal", "Papel"],
                correctAnswer: "Vidro",
                explanation: "A vela é feita de cera, e o copo de vidro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Farol : Carro :: Poste : Rua",
                options: ["Rua", "Calçada", "Casa", "Praça"],
                correctAnswer: "Rua",
                explanation: "O farol ilumina o caminho do carro, e o poste a rua."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sino : Tocar :: Tambor : Bater",
                options: ["Bater", "Soprar", "Dedilhar", "Sacudir"],
                correctAnswer: "Bater",
                explanation: "O sino emite som ao tocar, e o tambor ao bater."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Chave : Fechadura :: Cartão : Leitor",
                options: ["Leitor", "Banco", "Carteira", "Bolsa"],
                correctAnswer: "Leitor",
                explanation: "A chave entra na fechadura, e o cartão passa no leitor."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Perna : Joelho :: Braço : Cotovelo",
                options: ["Cotovelo", "Punho", "Ombro", "Mão"],
                correctAnswer: "Cotovelo",
                explanation: "O joelho é da perna, e o cotovelo é do braço."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lã : Ovelha :: Seda : Bicho-da-seda",
                options: ["Bicho-da-seda", "Lagarta", "Aranha", "Casulo"],
                correctAnswer: "Bicho-da-seda",
                explanation: "A lã é da ovelha, e a seda é do bicho-da-seda."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Nuvem : Céu :: Alga : Mar",
                options: ["Mar", "Rio", "Lago", "Piscina"],
                correctAnswer: "Mar",
                explanation: "As nuvens ficam no céu, e as algas no mar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ventilador : Vento :: Aquecedor : Calor",
                options: ["Calor", "Frio", "Ar", "Fumaça"],
                correctAnswer: "Calor",
                explanation: "O ventilador gera vento, e o aquecedor calor."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vassoura : Varrer :: Pano : Limpar",
                options: ["Limpar", "Lavar", "Enxugar", "Esfregar"],
                correctAnswer: "Limpar",
                explanation: "A vassoura serve para varrer, e o pano para limpar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Piloto : Avião :: Motorista : Ônibus",
                options: ["Ônibus", "Carro", "Caminhão", "Moto"],
                correctAnswer: "Ônibus",
                explanation: "O piloto guia o avião, e o motorista o ônibus."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Gelo : Derreter :: Água : Evaporar",
                options: ["Evaporar", "Congelar", "Ferver", "Esfriar"],
                correctAnswer: "Evaporar",
                explanation: "O gelo derrete, e a água evapora."
            )
        ]
    )
}
