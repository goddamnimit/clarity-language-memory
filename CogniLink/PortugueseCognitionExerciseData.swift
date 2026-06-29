import Foundation

struct PortugueseCognitionExerciseData {
    static let allExercises: [Exercise] = [
        storyRecall,
        numberSequences,
        causeAndEffect,
        emotions,
        whatsWrong
    ]

    private static let storyRecall = Exercise(
        id: UUID(),
        title: "Recordação da História",
        instructions: "Leia a história e responda às perguntas.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Maria foi ao supermercado comprar leite e pão. Ela esqueceu a carteira na bancada da cozinha. O que Maria deixou em casa?", options: ["A carteira dela", "As chaves dela", "Sua lista de compras", "O telefone dela"], correctAnswer: "A carteira dela", explanation: "Maria esqueceu a carteira na bancada da cozinha."),
            ExerciseItem(id: UUID(), prompt: "Manuel acordou cedo no sábado para ir pescar. Ele pescou uma truta grande, mas teve que jogá-la de volta porque era muito pequena. Que tipo de peixe Manuel pescou?", options: ["Uma truta", "Um salmão", "Um baixo", "Um bagre"], correctAnswer: "Uma truta", explanation: "A história menciona que Manuel pescou uma truta."),
            ExerciseItem(id: UUID(), prompt: "João estacionou o seu carro azul à sombra de um carvalho. Ao voltar, viu que o carro estava coberto de folhas amarelas. Qual é a cor do carro do João?", options: ["Azul", "Amarelo", "Vermelho", "Verde"], correctAnswer: "Azul", explanation: "A história diz que João tinha um carro azul."),
            ExerciseItem(id: UUID(), prompt: "Ana fez um bolo de chocolate para a festa de aniversário da filha. Ela colocou dez velas vermelhas no bolo. Quantas velas Ana colocou no bolo?", options: ["Dez", "Cinco", "Oito", "Doze"], correctAnswer: "Dez", explanation: "A história menciona que Ana colocou dez velas no bolo."),
            ExerciseItem(id: UUID(), prompt: "João foi ao correio enviar um pacote para o irmão em São José. O funcionário disse que chegaria na terça-feira. Onde mora o irmão do João?", options: ["São José", "Nova York", "Boston", "Miami"], correctAnswer: "São José", explanation: "A história diz que o irmão de João mora em São José."),
            ExerciseItem(id: UUID(), prompt: "Ana comprou ontem um novo par de tênis de corrida. Eles são verdes brilhantes com listras brancas. De que cor são os novos tênis de corrida da Ana?", options: ["Verde brilhante", "Azul", "Vermelho", "Preto"], correctAnswer: "Verde brilhante", explanation: "A história descreve os tênis como verde brilhante."),
            ExerciseItem(id: UUID(), prompt: "Manuel estava passeando no parque quando começou a chover. Ele abriu o guarda-chuva amarelo para ficar seco. Qual era a cor do guarda-chuva que Manuel usou?", options: ["Amarelo", "Vermelho", "Azul", "Preto"], correctAnswer: "Amarelo", explanation: "A história menciona que o guarda-chuva de Manuel era amarelo."),
            ExerciseItem(id: UUID(), prompt: "A padaria local foi fechada na segunda-feira para reparos. Eles planejavam reabrir na manhã de terça-feira, às seis horas. Em que dia a padaria fechou?", options: ["Segunda-feira", "Terça-feira", "Quarta-feira", "Domingo"], correctAnswer: "Segunda-feira", explanation: "A história diz que a padaria foi fechada na segunda-feira."),
            ExerciseItem(id: UUID(), prompt: "Maria chamou um encanador porque a pia da cozinha estava vazando. O encanador chegou em uma hora e consertou o cano. Por que Maria chamou um encanador?", options: ["A pia dela estava vazando", "O fogão dela estava quebrado", "A luz estava apagada", "A porta estava trancada"], correctAnswer: "A pia dela estava vazando", explanation: "A história menciona que a pia da cozinha estava vazando."),
            ExerciseItem(id: UUID(), prompt: "João passeava com seu cachorro, Max, pelo quarteirão. Max viu um esquilo e latiu alto para ele. Qual é o nome do cachorro do João?", options: ["Max", "Amigo", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "A história diz que o nome do cachorro de João é Max."),
            ExerciseItem(id: UUID(), prompt: "Ana estava fazendo sopa de legumes para o jantar. Ela percebeu que estava sem cenouras, então usou batatas. De que ingrediente Ana ficou sem?", options: ["Cenouras", "Batatas", "Cebolas", "Aipo"], correctAnswer: "Cenouras", explanation: "A história menciona que Ana ficou sem cenouras."),
            ExerciseItem(id: UUID(), prompt: "Manuel pediu uma pizza de calabresa e uma garrafa de refrigerante para o almoço. O custo total foi de quinze reais. Quanto custou o almoço do Manuel?", options: ["Quinze reais", "Dez reais", "Vinte reais", "Doze reais"], correctAnswer: "Quinze reais", explanation: "A história diz que o custo total foi de quinze reais."),
            ExerciseItem(id: UUID(), prompt: "Maria foi à biblioteca pegar emprestado um livro sobre jardinagem. Ela também pegou emprestado um DVD sobre história. Sobre qual assunto era o livro que Maria pegou emprestado?", options: ["Jardinagem", "História", "Culinária", "Viagens"], correctAnswer: "Jardinagem", explanation: "A história menciona que o livro era sobre jardinagem."),
            ExerciseItem(id: UUID(), prompt: "João pegou um trem matinal para a cidade para uma entrevista de emprego. Seu trem atrasou quinze minutos devido à manutenção dos trilhos. Por que o trem atrasou?", options: ["Manutenção dos trilhos", "Uma forte tempestade", "Uma queda de energia", "Um membro da tripulação ausente"], correctAnswer: "Manutenção dos trilhos", explanation: "A história diz que o atraso foi devido à manutenção dos trilhos."),
            ExerciseItem(id: UUID(), prompt: "Ana foi ao centro de jardinagem comprar rosas vermelhas. Elas estavam esgotadas, então ela comprou cravos cor de rosa. Que flor Ana acabou comprando?", options: ["Cravos cor de rosa", "Rosas vermelhas", "Tulipas amarelas", "Lírios brancos"], correctAnswer: "Cravos cor de rosa", explanation: "A história diz que Ana comprou cravos cor de rosa.")
        ]
    )

    private static let numberSequences = Exercise(
        id: UUID(),
        title: "Sequências Numéricas",
        instructions: "Encontre o próximo número na sequência.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "A sequência aumenta de 2 em 2."),
            ExerciseItem(id: UUID(), prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "A sequência aumenta de 5 em 5."),
            ExerciseItem(id: UUID(), prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "A sequência aumenta de 10 em 10."),
            ExerciseItem(id: UUID(), prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "A sequência aumenta de 3 em 3."),
            ExerciseItem(id: UUID(), prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "A sequência diminui de 1 em 1."),
            ExerciseItem(id: UUID(), prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "A sequência diminui de 2 em 2."),
            ExerciseItem(id: UUID(), prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "A sequência aumenta de 2 em 2 (números ímpares)."),
            ExerciseItem(id: UUID(), prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "A sequência aumenta de 4 em 4."),
            ExerciseItem(id: UUID(), prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "A sequência diminui de 5 em 5."),
            ExerciseItem(id: UUID(), prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "A sequência diminui de 10 em 10."),
            ExerciseItem(id: UUID(), prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "A sequência aumenta de 11 em 11."),
            ExerciseItem(id: UUID(), prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "A sequência aumenta de 2 em 2."),
            ExerciseItem(id: UUID(), prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "A sequência aumenta de 3 em 3."),
            ExerciseItem(id: UUID(), prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "A sequência diminui de 3 em 3."),
            ExerciseItem(id: UUID(), prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "A sequência aumenta de 7 em 7."),
            ExerciseItem(id: UUID(), prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "A sequência diminui de 4 em 4."),
            ExerciseItem(id: UUID(), prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "A sequência aumenta de 6 em 6."),
            ExerciseItem(id: UUID(), prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "A sequência aumenta de 5 em 5."),
            ExerciseItem(id: UUID(), prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "A sequência diminui de 10 em 10."),
            ExerciseItem(id: UUID(), prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "A sequência aumenta de 2 em 2.")
        ]
    )

    private static let causeAndEffect = Exercise(
        id: UUID(),
        title: "Causa e Efeito",
        instructions: "Escolha o resultado mais provável para cada situação.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Você deixa sorvete na bancada da cozinha por duas horas em um dia quente. O que acontece?", options: ["Fica mais duro", "Ele derrete", "Ele muda de cor", "Ele desaparece"], correctAnswer: "Ele derrete", explanation: "O calor derrete o sorvete."),
            ExerciseItem(id: UUID(), prompt: "Você se esquece de regar sua planta por três semanas. Qual é o resultado mais provável?", options: ["Ela cresce flores", "Fica verde", "Ele murcha e seca", "Fica azul"], correctAnswer: "Ele murcha e seca", explanation: "Plantas precisam de água para sobreviver. Sem água, murcham e secam."),
            ExerciseItem(id: UUID(), prompt: "Uma nuvem escura de tempestade bloqueia o sol e um trovão ressoa. O que provavelmente acontecerá a seguir?", options: ["Vai chover", "Vai ficar mais quente", "A neve cairá imediatamente", "As estrelas vão aparecer"], correctAnswer: "Vai chover", explanation: "Nuvens escuras e trovões indicam chuva por vir."),
            ExerciseItem(id: UUID(), prompt: "Você deixa cair uma tigela de vidro sobre um piso de cerâmica duro. Qual é o resultado mais provável?", options: ["Ele salta de volta", "Ele muda de cor", "Ele se quebra em pedaços", "Se transforma em água"], correctAnswer: "Ele se quebra em pedaços", explanation: "O vidro é frágil e se quebra ao cair no chão duro."),
            ExerciseItem(id: UUID(), prompt: "Você coloca uma fatia de pão na torradeira e deixa na posição mais alta. O que acontece?", options: ["Fica encharcado", "Queima e fica preto", "Fica macio e branco", "Ele desaparece"], correctAnswer: "Queima e fica preto", explanation: "Calor excessivo queima o pão e o deixa preto."),
            ExerciseItem(id: UUID(), prompt: "Você deixa os faróis do carro acesos durante a noite. O que acontecerá pela manhã?", options: ["O carro vai mais rápido", "A bateria vai acabar", "O carro vai mudar de cor", "O motor dará partida imediatamente"], correctAnswer: "A bateria vai acabar", explanation: "Luzes acesas drenam a bateria do carro durante a noite."),
            ExerciseItem(id: UUID(), prompt: "Uma forte tempestade de neve cai durante a noite, depositando quinze centímetros de neve. O que acontece com as estradas?", options: ["Elas ficam secas", "Elas ficam escorregadias e cobertas de neve", "Elas ficam verdes", "Elas evaporam"], correctAnswer: "Elas ficam escorregadias e cobertas de neve", explanation: "Neve acumulada torna as estradas perigosas e escorregadias."),
            ExerciseItem(id: UUID(), prompt: "Você coloca uma bandeja cheia de água no freezer. O que acontece depois de algumas horas?", options: ["A água ferve", "A água se transforma em gelo", "A água evapora", "A água muda de cor"], correctAnswer: "A água se transforma em gelo", explanation: "O freezer congela a água, transformando-a em gelo."),
            ExerciseItem(id: UUID(), prompt: "Você calça meias grossas de lã e botas pesadas em um dia quente de verão. O que acontece com seus pés?", options: ["Eles sentem frio", "Eles ficam secos", "Eles ficam quentes e suados", "Eles ficam azuis"], correctAnswer: "Eles ficam quentes e suados", explanation: "Roupas quentes no verão causam calor excessivo e suor nos pés."),
            ExerciseItem(id: UUID(), prompt: "Uma pessoa não dorme por 24 horas seguidas. Como ela provavelmente se sentirá?", options: ["Muito energizada", "Cansada e com sono", "Com fome", "Extremamente feliz"], correctAnswer: "Cansada e com sono", explanation: "A privação de sono causa cansaço extremo."),
            ExerciseItem(id: UUID(), prompt: "Você adiciona açúcar a uma xícara de chá quente e mexe. O que acontece com o açúcar?", options: ["Se transforma em gelo", "Ele desaparece do copo", "Dissolve-se no chá", "Isso queima"], correctAnswer: "Dissolve-se no chá", explanation: "O açúcar se dissolve em líquidos quentes quando mexido."),
            ExerciseItem(id: UUID(), prompt: "Você sai sob uma forte chuva sem guarda-chuva ou capa de chuva. Qual é o resultado?", options: ["Você fica seco", "Suas roupas ficam encharcadas", "Você fica azul", "Você se sente mais quente"], correctAnswer: "Suas roupas ficam encharcadas", explanation: "Sem proteção, a chuva molha completamente as roupas."),
            ExerciseItem(id: UUID(), prompt: "Você sopra ar em um balão até que fique cheio demais. O que acontece?", options: ["Ele voa para a lua", "Ele estoura", "Se transforma em um pássaro", "Encolhe"], correctAnswer: "Ele estoura", explanation: "Muita pressão de ar excede a capacidade do balão, fazendo com que ele estoure."),
            ExerciseItem(id: UUID(), prompt: "Você apaga todas as luzes de uma sala sem janelas à noite. O que acontece?", options: ["A sala fica mais iluminada", "A sala fica completamente escura", "A sala fica verde", "A sala se enche de luz"], correctAnswer: "A sala fica completamente escura", explanation: "Sem janelas e sem luzes, nenhuma fonte de luz ilumina a sala."),
            ExerciseItem(id: UUID(), prompt: "Você não estuda nem se prepara para um exame difícil. Qual é o resultado mais provável?", options: ["Você obtém uma pontuação perfeita", "Você tem um desempenho ruim", "Você esquece seu nome", "O exame foi cancelado"], correctAnswer: "Você tem um desempenho ruim", explanation: "Sem preparo, é difícil ter um bom desempenho em um exame difícil.")
        ]
    )

    private static let emotions = Exercise(
        id: UUID(),
        title: "Que Emoção É Essa?",
        instructions: "Escolha a emoção que melhor descreve como a pessoa se sente na situação.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ana acaba de descobrir que ganhou o primeiro lugar numa competição. Como ela se sente?", options: ["Triste", "Irritada", "Feliz", "Assustada"], correctAnswer: "Feliz", explanation: "Ganhar uma competição é uma conquista que causa alegria."),
            ExerciseItem(id: UUID(), prompt: "João ouve um barulho estranho e alto lá embaixo no meio da noite. Como ele se sente?", options: ["Feliz", "Assustado", "Entediado", "Animado"], correctAnswer: "Assustado", explanation: "Barulhos inesperados à noite podem causar medo."),
            ExerciseItem(id: UUID(), prompt: "A melhor amiga de Maria está se mudando para outro estado distante. Como Maria se sente?", options: ["Triste", "Irritada", "Animada", "Ciumenta"], correctAnswer: "Triste", explanation: "A partida de uma amiga querida causa tristeza."),
            ExerciseItem(id: UUID(), prompt: "Alguém atravessa uma longa fila na frente de João na loja. Como João se sente?", options: ["Feliz", "Assustado", "Irritado", "Envergonhado"], correctAnswer: "Irritado", explanation: "Ser desrespeitado em uma fila causa irritação."),
            ExerciseItem(id: UUID(), prompt: "Emily está prestes a fazer um discurso diante de um grande público. Como ela se sente?", options: ["Nervosa", "Entediada", "Triste", "Irritada"], correctAnswer: "Nervosa", explanation: "Falar em público para muitas pessoas causa nervosismo."),
            ExerciseItem(id: UUID(), prompt: "O voo de João foi cancelado, atrasando em dois dias suas férias. Como ele se sente?", options: ["Frustrado", "Feliz", "Assustado", "Orgulhoso"], correctAnswer: "Frustrado", explanation: "Ter planos cancelados causa frustração."),
            ExerciseItem(id: UUID(), prompt: "O filho de Lisa se formou na universidade com honras. Como Lisa se sente?", options: ["Orgulhosa", "Ciumenta", "Triste", "Assustada"], correctAnswer: "Orgulhosa", explanation: "A conquista de um filho traz orgulho aos pais."),
            ExerciseItem(id: UUID(), prompt: "Um funcionário explica pela quarta vez um formulário complicado, mas João ainda não consegue entender. Como João se sente?", options: ["Confuso", "Feliz", "Animado", "Orgulhoso"], correctAnswer: "Confuso", explanation: "Não conseguir entender algo após várias tentativas causa confusão."),
            ExerciseItem(id: UUID(), prompt: "Manuel está esperando em uma sala de espera silenciosa há mais de duas horas, sem nada para ler. Como ele se sente?", options: ["Entediado", "Assustado", "Irritado", "Feliz"], correctAnswer: "Entediado", explanation: "Esperar sem nada para fazer por muito tempo causa tédio."),
            ExerciseItem(id: UUID(), prompt: "A família de Ellen deu a ela uma festa surpresa de aniversário com todos os seus amigos. Como ela se sente?", options: ["Surpresa", "Irritada", "Triste", "Assustada"], correctAnswer: "Surpresa", explanation: "Uma festa surpresa provoca sentimento de surpresa e alegria."),
            ExerciseItem(id: UUID(), prompt: "Um cachorro de rua saiu correndo e latiu agressivamente para Karen durante sua caminhada. Como ela se sente?", options: ["Assustada", "Feliz", "Entediada", "Orgulhosa"], correctAnswer: "Assustada", explanation: "Um cão agressivo causa medo e susto."),
            ExerciseItem(id: UUID(), prompt: "William perdeu sua aliança de casamento enquanto fazia jardinagem. Como ele se sente?", options: ["Chateado", "Animado", "Entediado", "Calmo"], correctAnswer: "Chateado", explanation: "Perder um objeto de valor sentimental causa tristeza e angústia."),
            ExerciseItem(id: UUID(), prompt: "Patrícia recebeu dos netos um lindo cartão e flores. Como ela se sente?", options: ["Amada", "Irritada", "Assustada", "Confusa"], correctAnswer: "Amada", explanation: "Gestos gentis da família fazem a pessoa se sentir amada e apreciada."),
            ExerciseItem(id: UUID(), prompt: "O supermercado não tinha o pão específico que Manuel queria, por isso teve que comprar outra marca. Como ele se sente?", options: ["Um pouco decepcionado", "Aterrorizado", "Furioso", "Em êxtase"], correctAnswer: "Um pouco decepcionado", explanation: "Não encontrar o produto desejado causa uma leve decepção."),
            ExerciseItem(id: UUID(), prompt: "João passou a tarde inteira construindo uma estante e ficou perfeita. Como ele se sente?", options: ["Satisfeito", "Triste", "Assustado", "Entediado"], correctAnswer: "Satisfeito", explanation: "Completar um projeto com sucesso traz satisfação."),
            ExerciseItem(id: UUID(), prompt: "Ana deixou cair acidentalmente uma bandeja de bebidas em um restaurante tranquilo. Como ela se sente?", options: ["Envergonhada", "Feliz", "Irritada", "Entediada"], correctAnswer: "Envergonhada", explanation: "Fazer algo embaraçoso em público causa vergonha."),
            ExerciseItem(id: UUID(), prompt: "Manuel fará sua primeira viagem ao Havaí amanhã de manhã. Como ele se sente?", options: ["Animado", "Triste", "Irritado", "Entediado"], correctAnswer: "Animado", explanation: "Uma viagem esperada traz animação e entusiasmo."),
            ExerciseItem(id: UUID(), prompt: "O gato de Susan voltou para casa em segurança depois de desaparecer por três dias. Como ela se sente?", options: ["Aliviada", "Irritada", "Assustada", "Confusa"], correctAnswer: "Aliviada", explanation: "Encontrar um animal de estimação desaparecido traz alívio."),
            ExerciseItem(id: UUID(), prompt: "A conexão com a internet cai a cada cinco minutos enquanto João tenta trabalhar. Como ele se sente?", options: ["Irritado", "Assustado", "Feliz", "Entediado"], correctAnswer: "Irritado", explanation: "Interrupções frequentes no trabalho causam irritação."),
            ExerciseItem(id: UUID(), prompt: "Ana tomou um banho demorado e quente depois de um dia estressante. Como ela se sente?", options: ["Descontraída", "Irritada", "Assustada", "Nervosa"], correctAnswer: "Descontraída", explanation: "Um banho quente após um dia difícil traz relaxamento e descontração.")
        ]
    )

    private static let whatsWrong = Exercise(
        id: UUID(),
        title: "O que Há de Errado Aqui?",
        instructions: "Identifique o que está errado em cada situação.",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "João tomou café da manhã à meia-noite antes de ir para a cama.", options: ["As pessoas não comem comida", "O café da manhã é uma refeição matinal, não de meia-noite", "João não deveria dormir", "Meia-noite é à tarde"], correctAnswer: "O café da manhã é uma refeição matinal, não de meia-noite", explanation: "O café da manhã é uma refeição do período da manhã, não da meia-noite."),
            ExerciseItem(id: UUID(), prompt: "O cachorro latiu para o carteiro e depois voou por cima do telhado para pegar um pássaro.", options: ["Cachorros não latem", "Os cães não podem voar", "Os carteiros não entregam correspondência", "Os pássaros não voam"], correctAnswer: "Os cães não podem voar", explanation: "Cachorros não têm capacidade de voar."),
            ExerciseItem(id: UUID(), prompt: "Ana vestiu o casaco quente de inverno e as luvas para nadar na piscina exterior durante o mês de julho.", options: ["As pessoas não nadam em julho", "Você não usa casaco de inverno e luvas para nadar", "Piscinas exteriores não existem", "Casacos são usados no verão"], correctAnswer: "Você não usa casaco de inverno e luvas para nadar", explanation: "Roupas de inverno não são adequadas para nadar."),
            ExerciseItem(id: UUID(), prompt: "O relógio na parede bateu treze horas, então João sabia que era hora do café da manhã.", options: ["Os relógios não ficam nas paredes", "Os relógios padrão só vão até doze horas", "Café não é uma bebida matinal", "João não toma café"], correctAnswer: "Os relógios padrão só vão até doze horas", explanation: "Relógios analógicos e digitais padrão não marcam 13 horas."),
            ExerciseItem(id: UUID(), prompt: "Paul atravessou de bicicleta o lago profundo para visitar seu amigo.", options: ["Bicicletas não podem andar na água", "Lagos não têm peixes", "Amigos não se visitam", "Bicicletas não têm pedais"], correctAnswer: "Bicicletas não podem andar na água", explanation: "Bicicletas são veículos terrestres e não funcionam na água."),
            ExerciseItem(id: UUID(), prompt: "Ana ferveu alguns cubos de gelo em uma panela para fazer água gelada.", options: ["Cubos de gelo não existem", "Ferver cubos de gelo os torna água quente, não fria", "Panelas não podem conter gelo", "Beber água não é saudável"], correctAnswer: "Ferver cubos de gelo os torna água quente, não fria", explanation: "Ferver derrete e aquece o gelo, produzindo água quente, não gelada."),
            ExerciseItem(id: UUID(), prompt: "O peixe subiu na árvore para escapar do gato faminto.", options: ["Os peixes não podem subir em árvores", "Gatos não comem peixe", "As árvores não produzem folhas", "Os peixes vivem nas árvores"], correctAnswer: "Os peixes não podem subir em árvores", explanation: "Peixes vivem na água e não têm capacidade de subir em árvores."),
            ExerciseItem(id: UUID(), prompt: "João usou um garfo para tomar sua canja de galinha.", options: ["Os garfos não podem conter sopa líquida", "Sopa não é feita de frango", "João deveria usar uma faca", "Sopa não se come com talheres"], correctAnswer: "Os garfos não podem conter sopa líquida", explanation: "Garfos têm dentes e não conseguem conter líquidos como a sopa."),
            ExerciseItem(id: UUID(), prompt: "Como estava chovendo muito, Ana pendurou as roupas molhadas no varal externo para secar.", options: ["A chuva não molha as coisas", "As roupas não secam lá fora na chuva", "Varais são usados apenas dentro de casa", "Ana não usa roupa"], correctAnswer: "As roupas não secam lá fora na chuva", explanation: "Roupas penduradas na chuva ficam ainda mais molhadas, não secam."),
            ExerciseItem(id: UUID(), prompt: "O avião pousou em segurança no aeroporto e todos os passageiros desceram nos trilhos do trem.", options: ["Aviões não pousam em aeroportos", "Passageiros não viajam em aviões", "Os aeroportos não possuem trilhos de trem nos portões", "Os trens não circulam nos trilhos"], correctAnswer: "Os aeroportos não possuem trilhos de trem nos portões", explanation: "Aeroportos têm corredores e portões, não trilhos de trem."),
            ExerciseItem(id: UUID(), prompt: "Ana ligou o ar condicionado para deixar a sala mais quente.", options: ["Os aparelhos de ar condicionado resfriam os ambientes, eles não os aquecem", "As salas não têm paredes", "Ana não tem casa", "Ar condicionado não consome eletricidade"], correctAnswer: "Os aparelhos de ar condicionado resfriam os ambientes, eles não os aquecem", explanation: "Aparelhos de ar condicionado resfriam o ambiente, não aquecem."),
            ExerciseItem(id: UUID(), prompt: "O coelho perseguiu o grande lobo cinzento pela floresta.", options: ["Coelhos não vivem em florestas", "Lobos não correm", "Coelhos não perseguem lobos", "Lobos não são cinzentos"], correctAnswer: "Coelhos não perseguem lobos", explanation: "Na natureza, lobos perseguem coelhos, e não o contrário."),
            ExerciseItem(id: UUID(), prompt: "Manuel comprou um par de sapatos de couro para as mãos, para mantê-las aquecidas no inverno.", options: ["Os sapatos são usados nos pés e não nas mãos", "Couro não é usado para sapatos", "As mãos não ficam frias", "O inverno não é frio"], correctAnswer: "Os sapatos são usados nos pés e não nas mãos", explanation: "Sapatos são calçados para os pés; para aquecer as mãos usam-se luvas."),
            ExerciseItem(id: UUID(), prompt: "O sol nasceu à meia-noite, iluminando o céu da manhã.", options: ["O sol nasce de manhã, não à meia-noite", "Meia-noite é à tarde", "O sol não está brilhante", "A manhã está escura"], correctAnswer: "O sol nasce de manhã, não à meia-noite", explanation: "O sol nasce pela manhã; à meia-noite o céu está escuro."),
            ExerciseItem(id: UUID(), prompt: "Maria ligou a televisão para ouvir sua rádio preferida.", options: ["As televisões mostram vídeo, não são rádios", "Rádios não tocam música", "Maria não gosta de música", "As televisões não têm alto-falantes"], correctAnswer: "As televisões mostram vídeo, não são rádios", explanation: "Televisões são aparelhos de vídeo; para ouvir rádio usa-se um rádio.")
        ]
    )
}
