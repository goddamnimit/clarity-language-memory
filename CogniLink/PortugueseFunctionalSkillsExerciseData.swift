import Foundation

struct PortugueseFunctionalSkillsExerciseData {

    static let allExercises: [Exercise] = [
        readingPrescription,
        readingMenu,
        understandingBills,
        whatWouldYouDo,
        cookingSteps,
        groceryShopping
    ]

    // MARK: - Lendo uma Receita
    private static let readingPrescription = Exercise(
        id: UUID(),
        title: "Lendo uma Receita",
        instructions: "Use as informações do rótulo para responder às perguntas.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 comprimido duas vezes ao dia com alimentos. Quantos comprimidos você deve tomar no total por dia?",
                options: ["1", "2", "3", "4"],
                correctAnswer: "2",
                explanation: "Duas vezes ao dia, com 1 comprimido cada vez, totaliza 2 comprimidos por dia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 2 comprimidos ao deitar. Quando você deve tomar este medicamento?",
                options: ["De manhã", "Com almoço", "Na hora de dormir", "Antes do exercício"],
                correctAnswer: "Na hora de dormir",
                explanation: "‘Ao deitar’ significa na hora de ir dormir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 cápsula a cada 8 horas conforme necessário para a dor. Quantas vezes você consegue fazer isso em um dia de 24 horas?",
                options: ["2 vezes", "3 vezes", "4 vezes", "6 vezes"],
                correctAnswer: "3 vezes",
                explanation: "24 horas divididas por 8 horas = 3 doses por dia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Amoxicilina 250mg. Tome 1 comprimido três vezes ao dia. Manter refrigerado. Como você deve armazenar este medicamento?",
                options: ["No freezer", "Na geladeira", "Em um armário quente", "Sob luz solar direta"],
                correctAnswer: "Na geladeira",
                explanation: "‘Manter refrigerado’ significa guardar na geladeira."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Não beba álcool enquanto estiver tomando este medicamento. Pode causar sonolência. Qual é o efeito colateral avisado deste medicamento?",
                options: ["Sonolência", "Maior energia", "Pressão alta", "Espirros"],
                correctAnswer: "Sonolência",
                explanation: "O rótulo avisa que o medicamento pode causar sonolência."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 comprimido por dia pela manhã com o estômago vazio. Quando você deve tomar café da manhã?",
                options: ["Antes de tomar o comprimido", "Depois de tomar o comprimido", "Enquanto toma o comprimido", "Não tome café da manhã"],
                correctAnswer: "Depois de tomar o comprimido",
                explanation: "‘Com o estômago vazio’ significa tomar o comprimido antes de comer."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 comprimido por via oral todos os dias. Quantidade: 30. Recargas: 2. Quantas recargas são permitidas?",
                options: ["1", "2", "3", "30"],
                correctAnswer: "2",
                explanation: "O rótulo indica 2 recargas permitidas."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Aplique uma camada fina na área afetada da pele duas vezes ao dia. Não engula. Como esse medicamento é aplicado?",
                options: ["Ao engoli-lo", "Ao esfregar na pele", "Pulverizando no nariz", "Ao dissolver em água"],
                correctAnswer: "Ao esfregar na pele",
                explanation: "O rótulo instrui a aplicar na pele, não a engolir."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Descarte após 15/10/2026. Hoje é 01/11/2026. Você pode tomar este medicamento com segurança?",
                options: ["Sim", "Não", "Só com comida", "Só à noite"],
                correctAnswer: "Não",
                explanation: "O medicamento está vencido desde 15/10/2026, antes da data atual."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 comprimido duas vezes ao dia. Não tome com laticínios. Qual bebida você deve evitar ao tomar esta pílula?",
                options: ["Água", "Leite", "Suco de maçã", "Café preto"],
                correctAnswer: "Leite",
                explanation: "Laticínios incluem o leite, que deve ser evitado com este medicamento."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 2 comprimidos 1 hora antes do voo. Por que você tomaria este medicamento?",
                options: ["Para evitar enjoo durante viagens", "Para dormir melhor em casa", "Para curar uma dor de cabeça", "Para tratar erupções cutâneas"],
                correctAnswer: "Para evitar enjoo durante viagens",
                explanation: "Tomar antes do voo sugere que é para enjoo de viagem."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Colírio. Instile 1 gota em cada olho duas vezes ao dia. Onde você deve colocar este medicamento?",
                options: ["Na sua boca", "Em seus ouvidos", "Em seus olhos", "Na sua pele"],
                correctAnswer: "Em seus olhos",
                explanation: "Colírio é um medicamento para os olhos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 comprimido a cada 4 a 6 horas, conforme necessário para dor de cabeça. Máximo de 4 comprimidos por dia. Qual é o máximo de comprimidos que você pode tomar em um dia?",
                options: ["1", "2", "4", "6"],
                correctAnswer: "4",
                explanation: "O rótulo especifica o máximo de 4 comprimidos por dia."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome com um copo cheio de água. Por que você precisa de água com esta pílula?",
                options: ["Para dissolvê-lo na pele", "Para ajudar a engoli-lo e prevenir dores de estômago", "Para mudar sua cor", "Para saborear melhor"],
                correctAnswer: "Para ajudar a engoli-lo e prevenir dores de estômago",
                explanation: "Água facilita a deglutição e protege o estômago."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Rótulo: Tome 1 comprimido por dia com o jantar. Qual é a melhor hora para fazer isso?",
                options: ["No café da manhã", "No almoço", "No jantar", "No meio da noite"],
                correctAnswer: "No jantar",
                explanation: "O rótulo instrui a tomar o comprimido com o jantar."
            )
        ]
    )

    // MARK: - Lendo um Cardápio
    private static let readingMenu = Exercise(
        id: UUID(),
        title: "Lendo um Cardápio",
        instructions: "Use as informações do cardápio para responder às perguntas.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Cheeseburger R$ 8,00 | Batata frita R$ 3,00 | Refrigerante R$ 2,00. Quanto custa um cheeseburger?",
                options: ["R$ 8,00", "R$ 3,00", "R$ 2,00", "R$ 11,00"],
                correctAnswer: "R$ 8,00",
                explanation: "O cardápio lista o cheeseburger por R$ 8,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Café R$ 2,50 | Chá R$ 2,00 | Muffin R$ 3,00. Qual item é o mais barato?",
                options: ["Café", "Chá", "Muffin", "Eles custam o mesmo"],
                correctAnswer: "Chá",
                explanation: "O chá a R$ 2,00 é o item mais barato do cardápio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Sopa de Tomate R$ 5,00 | Salada Verde R$ 6,00 | Frango César R$ 9,00. Quanto custa uma tigela de sopa de tomate?",
                options: ["R$ 5,00", "R$ 6,00", "R$ 9,00", "R$ 14,00"],
                correctAnswer: "R$ 5,00",
                explanation: "A sopa de tomate custa R$ 5,00 segundo o cardápio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Panquecas R$ 10,00 | Rabanada R$ 9,00 | Acompanhamento de Bacon R$ 4,00. Qual é o custo da rabanada?",
                options: ["R$ 10,00", "R$ 9,00", "R$ 4,00", "R$ 13,00"],
                correctAnswer: "R$ 9,00",
                explanation: "A rabanada custa R$ 9,00 conforme o cardápio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Fatia de Pizza de Queijo R$ 4,00 | Fatia de Pizza de Pepperoni R$ 4,50. Quanto custa mais uma fatia de Pepperoni do que uma fatia de Queijo?",
                options: ["R$ 0,50", "R$ 1,00", "R$ 4,50", "R$ 8,50"],
                correctAnswer: "R$ 0,50",
                explanation: "R$ 4,50 – R$ 4,00 = R$ 0,50 de diferença."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Sanduíche de Frango R$ 7,00 | Fish and Chips R$ 11,00. Você tem R$ 10,00. Qual refeição você pode pagar?",
                options: ["Sanduíche de Frango", "Fish and Chips", "Ambas as refeições", "Nenhuma refeição"],
                correctAnswer: "Sanduíche de Frango",
                explanation: "R$ 10,00 cobre o sanduíche de frango (R$ 7,00), mas não o fish and chips (R$ 11,00)."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Sorvete de Chocolate R$ 4,00 | Torta de Maçã R$ 5,00 | Adicione Sorvete de Baunilha à Torta R$ 1,50. Quanto custa Torta de Maçã com Sorvete de Baunilha?",
                options: ["R$ 5,00", "R$ 6,50", "R$ 9,00", "R$ 4,00"],
                correctAnswer: "R$ 6,50",
                explanation: "R$ 5,00 + R$ 1,50 = R$ 6,50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Wrap de Peru R$ 8,50 | Batatas Fritas R$ 1,50 | Suco R$ 2,00. Qual é o custo total de um wrap de peru e um suco?",
                options: ["R$ 8,50", "R$ 10,00", "R$ 10,50", "R$ 12,00"],
                correctAnswer: "R$ 10,50",
                explanation: "R$ 8,50 + R$ 2,00 = R$ 10,50."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Sopa de Legumes R$ 4,00 | Ensopado de Carne R$ 7,00. Qual prato contém carne?",
                options: ["Sopa de Legumes", "Ensopado de Carne", "Ambos", "Nenhum dos dois"],
                correctAnswer: "Ensopado de Carne",
                explanation: "O ensopado de carne contém carne, como o nome indica."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Taco R$ 3,00 | Quesadilla R$ 6,00 | Refrigerante R$ 2,00. Qual é o custo de uma Quesadilla?",
                options: ["R$ 3,00", "R$ 6,00", "R$ 2,00", "R$ 8,00"],
                correctAnswer: "R$ 6,00",
                explanation: "O cardápio lista a quesadilla por R$ 6,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Espaguete R$ 12,00 | Lasanha R$ 14,00 | Pão de Alho R$ 3,00. Quanto custa um acompanhamento de pão de alho?",
                options: ["R$ 12,00", "R$ 14,00", "R$ 3,00", "R$ 15,00"],
                correctAnswer: "R$ 3,00",
                explanation: "O pão de alho é listado por R$ 3,00 no cardápio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cardápio: Ovos Benedict R$ 11,00 | Aveia R$ 6,00 | Fruteira R$ 5,00. Qual item do café da manhã é o mais caro?",
                options: ["Ovos Benedict", "Aveia", "Fruteira", "São o mesmo preço"],
                correctAnswer: "Ovos Benedict",
                explanation: "Os Ovos Benedict a R$ 11,00 são o item mais caro do cardápio."
            )
        ]
    )

    // MARK: - Compreendendo as Contas
    private static let understandingBills = Exercise(
        id: UUID(),
        title: "Compreendendo as Contas",
        instructions: "Use as informações da conta para responder às perguntas.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de energia elétrica: Total devido: R$ 45,00. Data de vencimento: 15 de julho. Qual é o valor que você precisa pagar?",
                options: ["R$ 15,00", "R$ 45,00", "15 de julho", "Grátis"],
                correctAnswer: "R$ 45,00",
                explanation: "O total devido é R$ 45,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de água: Data de vencimento: 10 de outubro. Taxa de atraso: R$ 5,00. Hoje é 12 de outubro. O que acontece se você pagar hoje?",
                options: ["Você paga o valor normal", "Você paga R$ 5,00 de multa por atraso", "Você ganha um desconto", "Nada acontece"],
                correctAnswer: "Você paga R$ 5,00 de multa por atraso",
                explanation: "Pagar após a data de vencimento resulta em multa de R$ 5,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de Internet: Cobrança Mensal: R$ 60,00. Desconto de pagamento automático: -R$ 5,00. Qual é o preço final com pagamento automático?",
                options: ["R$ 60,00", "R$ 65,00", "R$ 55,00", "R$ 5,00"],
                correctAnswer: "R$ 55,00",
                explanation: "R$ 60,00 – R$ 5,00 de desconto = R$ 55,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de gás: Encargos atuais: R$ 30,00. Saldo não pago: R$ 10,00. Saldo total: R$ 40,00. Quanto dinheiro não pago foi transferido do mês passado?",
                options: ["R$ 30,00", "R$ 10,00", "R$ 40,00", "R$ 0,00"],
                correctAnswer: "R$ 10,00",
                explanation: "O saldo não pago transferido do mês anterior é R$ 10,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta telefônica: Data de vencimento: 20 de junho. Data atual: 15 de junho. Quantos dias faltam para pagar esta conta em dia?",
                options: ["5 dias", "20 dias", "15 dias", "1 dia"],
                correctAnswer: "5 dias",
                explanation: "20 de junho – 15 de junho = 5 dias restantes."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de cabo: Total devido: R$ 80,00. A pagar a: “XYZ Cable Co.” A quem deve ser emitido o cheque?",
                options: ["R$ 80,00", "XYZ Cable Co.", "O instalador de cabo", "Dinheiro"],
                correctAnswer: "XYZ Cable Co.",
                explanation: "O cheque deve ser emitido para a empresa XYZ Cable Co."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de serviços públicos: Água: R$ 20,00 | Gás: R$ 30,00 | Energia elétrica: R$ 50,00. Total: R$ 100,00. Qual serviço de utilidade pública custa mais?",
                options: ["Água", "Gás", "Energia elétrica", "Eles custam o mesmo"],
                correctAnswer: "Energia elétrica",
                explanation: "A energia elétrica a R$ 50,00 é o serviço mais caro."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de serviço de streaming: Status da conta: SUSPENSA. Saldo devido: R$ 15,00. Por que o serviço não está funcionando?",
                options: ["A internet caiu", "A televisão está quebrada", "A conta está suspensa por saldo não pago", "O streaming está armazenando em buffer"],
                correctAnswer: "A conta está suspensa por saldo não pago",
                explanation: "A conta foi suspensa devido ao saldo não pago de R$ 15,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Associação à academia: Taxa anual: R$ 120,00. Taxa mensal: R$ 10,00. Quanto é a taxa anual?",
                options: ["R$ 10,00", "R$ 120,00", "R$ 130,00", "R$ 12,00"],
                correctAnswer: "R$ 120,00",
                explanation: "A taxa anual é de R$ 120,00 conforme informado."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta de aquecimento: Janeiro: R$ 110,00. Julho: R$ 20,00. Por que a conta é mais alta em janeiro?",
                options: ["O gás fica mais caro no verão", "Mais calor é usado no inverno em janeiro", "A casa está vazia em janeiro", "O relógio mudou"],
                correctAnswer: "Mais calor é usado no inverno em janeiro",
                explanation: "No inverno, o aquecimento é usado com maior frequência, aumentando o consumo."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fatura de cartão de crédito: Pagamento mínimo: R$ 25,00. Saldo total: R$ 500,00. Qual é o valor mais baixo que você pode pagar este mês para evitar multa por atraso?",
                options: ["R$ 25,00", "R$ 500,00", "R$ 0,00", "R$ 475,00"],
                correctAnswer: "R$ 25,00",
                explanation: "O pagamento mínimo de R$ 25,00 evita a multa por atraso."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Conta Médica: Cobrança Total: R$ 150,00. Seguro Coberto: R$ 120,00. Responsabilidade do paciente: R$ 30,00. Quanto você deve?",
                options: ["R$ 150,00", "R$ 120,00", "R$ 30,00", "R$ 0,00"],
                correctAnswer: "R$ 30,00",
                explanation: "A responsabilidade do paciente é de R$ 30,00 após o seguro cobrir R$ 120,00."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Assinatura de jornal: Próxima data de renovação: 31 de dezembro de 2026. Se quiser cancelar antes de renovar, quando você deve ligar?",
                options: ["Antes de 31 de dezembro de 2026", "Após 31 de dezembro de 2026", "Em janeiro de 2027", "Nunca"],
                correctAnswer: "Antes de 31 de dezembro de 2026",
                explanation: "Para cancelar sem renovação automática, ligue antes da data de renovação."
            )
        ]
    )

    // MARK: - O que Você Faria?
    private static let whatWouldYouDo = Exercise(
        id: UUID(),
        title: "O que Você Faria?",
        instructions: "Escolha a melhor resposta para cada situação.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Você sente cheiro de fumaça em sua cozinha, mas não vê nenhum fogo. O que você deve fazer primeiro?",
                options: ["Ignore", "Abra as janelas e verifique o fogão", "Chame um amigo para conversar", "Volte a dormir"],
                correctAnswer: "Abra as janelas e verifique o fogão",
                explanation: "Cheiro de fumaça pode indicar perigo; verifique a fonte e ventile o ambiente."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você está no supermercado e percebe que esqueceu a carteira em casa. Qual é a melhor opção?",
                options: ["Leve as compras sem pagar", "Peça ao caixa para segurar seu carrinho e vá buscar a carteira", "Saia da loja chorando", "Discuta com o gerente"],
                correctAnswer: "Peça ao caixa para segurar seu carrinho e vá buscar a carteira",
                explanation: "A solução prática e honesta é pedir ajuda ao funcionário e voltar para pagar."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você deixa cair um ovo cru no chão da cozinha e ele quebra. O que você deve fazer?",
                options: ["Deixe aí até amanhã", "Limpe imediatamente com papel toalha e sabão", "Cubra com um tapete", "Deixe o gato comer"],
                correctAnswer: "Limpe imediatamente com papel toalha e sabão",
                explanation: "Limpar imediatamente evita acidentes e mantém a cozinha higiênica."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Seu amigo lhe conta que o cachorro dele faleceu ontem. O que você deveria dizer?",
                options: ["Isso é engraçado", "Sinto muito pela sua perda", "Você deveria comprar um gato", "Posso ficar com os brinquedos dele?"],
                correctAnswer: "Sinto muito pela sua perda",
                explanation: "Expressar condolências é a resposta empática e adequada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você recebe um telefonema de um número desconhecido alegando que ganhou na loteria e solicitando seus dados bancários. O que você deve fazer?",
                options: ["Forneça os dados imediatamente", "Desligue e não compartilhe nenhum dado pessoal", "Peça-lhes para ligarem depois", "Chame sua família para comemorar"],
                correctAnswer: "Desligue e não compartilhe nenhum dado pessoal",
                explanation: "Golpistas usam esse tipo de ligação para roubar dados financeiros."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você se sente tonto e com vertigens ao ficar de pé em uma sala quente. O que você deve fazer?",
                options: ["Continue de pé e feche os olhos", "Sente-se imediatamente e beba um pouco de água", "Corra para o banheiro", "Gire no lugar"],
                correctAnswer: "Sente-se imediatamente e beba um pouco de água",
                explanation: "Sentar e hidratar-se ajuda a estabilizar ao sentir tontura."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você vê água vazando debaixo da pia da cozinha. Qual é a primeira coisa que você deve fazer?",
                options: ["Chame um pintor", "Coloque um balde para coletar a água", "Limpe o chão depois", "Apague as luzes"],
                correctAnswer: "Coloque um balde para coletar a água",
                explanation: "Colocar um balde limita o dano enquanto você busca ajuda especializada."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você foi convidado para um jantar, mas não pode ir. O que você deve fazer?",
                options: ["Só não apareça", "Avise o anfitrião com antecedência que não poderá comparecer", "Chegue tarde sem avisar", "Envie um presente sem responder"],
                correctAnswer: "Avise o anfitrião com antecedência que não poderá comparecer",
                explanation: "Avisar com antecedência é a atitude educada e respeitosa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você acidentalmente quebra um vaso decorativo na casa de um amigo. Qual é a resposta correta?",
                options: ["Esconda as peças debaixo do sofá", "Peça desculpas e ofereça-se para substituí-lo", "Finja que não fez isso", "Culpe o cachorro"],
                correctAnswer: "Peça desculpas e ofereça-se para substituí-lo",
                explanation: "Pedir desculpas e oferecer reparação é a atitude honesta e respeitosa."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você não consegue encontrar as chaves de sua casa e está trancado do lado de fora. Qual é o melhor passo?",
                options: ["Quebre uma janela para entrar", "Ligue para um familiar com chave reserva ou um chaveiro", "Espere na varanda para sempre", "Chute a porta"],
                correctAnswer: "Ligue para um familiar com chave reserva ou um chaveiro",
                explanation: "Pedir ajuda a um familiar ou chaveiro é a solução segura e prática."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você percebe que as luzes da rua estão acesas, mas sua casa não tem energia elétrica. O que você deve fazer?",
                options: ["Verifique sua caixa de disjuntores", "Compre uma televisão nova", "Vá para a cama imediatamente", "Chame a polícia"],
                correctAnswer: "Verifique sua caixa de disjuntores",
                explanation: "Se apenas sua casa perdeu energia, o problema pode ser um disjuntor desarmado."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você vê um vizinho idoso lutando para carregar sacolas pesadas de supermercado. O que você deve fazer?",
                options: ["Passe por eles rapidamente", "Ofereça-se para ajudá-los a carregar as sacolas", "Tire uma foto deles", "Diga-lhes para andarem mais rápido"],
                correctAnswer: "Ofereça-se para ajudá-los a carregar as sacolas",
                explanation: "Ajudar um vizinho com dificuldades é uma atitude gentil e solidária."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você toma um gole de café e percebe que está muito quente e queima sua boca. O que você deve fazer?",
                options: ["Beba o resto rapidamente", "Cuspa com cuidado e beba água fria", "Grite bem alto", "Jogue a caneca"],
                correctAnswer: "Cuspa com cuidado e beba água fria",
                explanation: "Cuspir e beber água fria alivia a queimadura na boca."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "O seu médico prescreve um novo medicamento, mas você não sabe como tomá-lo. O que você deve fazer?",
                options: ["Adivinhe a dosagem", "Peça ao farmacêutico ou médico para explicar", "Não tome o remédio", "Procure nas redes sociais"],
                correctAnswer: "Peça ao farmacêutico ou médico para explicar",
                explanation: "Profissionais de saúde são a fonte mais confiável para orientações sobre medicamentos."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você acidentalmente derramou vinho tinto no tapete branco do seu amigo. O que você deve fazer?",
                options: ["Coloque uma cadeira sobre a mancha", "Peça desculpas e ajude a limpar imediatamente", "Saia da festa mais cedo", "Diga a eles que era suco de uva"],
                correctAnswer: "Peça desculpas e ajude a limpar imediatamente",
                explanation: "Agir imediatamente minimiza o dano e demonstra responsabilidade."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você ouve o alarme de fumaça apitar com um toque curto a cada minuto. O que isto significa?",
                options: ["Há um incêndio", "A bateria está fraca e precisa ser substituída", "O alarme está quebrado", "Nada"],
                correctAnswer: "A bateria está fraca e precisa ser substituída",
                explanation: "Um bipe periódico indica bateria fraca, não um incêndio."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você está dirigindo e vê um veículo de emergência com luzes piscando atrás de você. O que você deve fazer?",
                options: ["Acelere para ficar à frente", "Encoste na beira da estrada e pare com segurança", "Pare imediatamente no meio da pista", "Ignore"],
                correctAnswer: "Encoste na beira da estrada e pare com segurança",
                explanation: "A lei exige que motoristas encostem para dar passagem a veículos de emergência."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você recebe um e-mail do seu banco solicitando que você clique em um link para verificar sua senha. O que você deve fazer?",
                options: ["Clique no link e digite sua senha", "Exclua o e-mail ou entre em contato diretamente com seu banco pelo número oficial", "Encaminhe para seus amigos", "Responda com sua senha"],
                correctAnswer: "Exclua o e-mail ou entre em contato diretamente com seu banco pelo número oficial",
                explanation: "Bancos nunca pedem senha por e-mail; esse tipo de mensagem é um golpe de phishing."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Você encontra uma carteira na calçada contendo dinheiro e uma carteira de identidade. O que você deve fazer?",
                options: ["Guarde o dinheiro e descarte a carteira", "Entregue à polícia ou tente contatar o proprietário usando o documento", "Deixe na calçada", "Dê para um estranho"],
                correctAnswer: "Entregue à polícia ou tente contatar o proprietário usando o documento",
                explanation: "Devolver um objeto perdido ao dono é a atitude honesta e correta."
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Seu alarme de fumaça dispara com um alarme alto e contínuo. O que você deve fazer?",
                options: ["Ignore e espere que pare", "Verifique se há incêndio e saia do prédio com segurança se necessário", "Troque as baterias imediatamente", "Vá dormir"],
                correctAnswer: "Verifique se há incêndio e saia do prédio com segurança se necessário",
                explanation: "Um alarme contínuo pode indicar incêndio real; verifique e evacue se necessário."
            )
        ]
    )

    // MARK: - Passos de Culinária
    private static let cookingSteps = Exercise(
        id: UUID(),
        title: "Passos de Culinária",
        instructions: "Ordene as etapas da receita na sequência correta.",
        section: .functionalSkills,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar um Chá",
                options: ["Ferver a água na chaleira", "Colocar o saquinho de chá na xícara", "Despejar a água quente na xícara", "Esperar 3 minutos e beber"],
                correctAnswer: "Ferver a água na chaleira | Colocar o saquinho de chá na xícara | Despejar a água quente na xícara | Esperar 3 minutos e beber"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar as Mãos",
                options: ["Aplicar o sabonete nas mãos", "Esfregar as mãos por 20 segundos", "Enxaguar o sabonete e secar com a toalha", "Abrir a torneira e molhar as mãos"],
                correctAnswer: "Abrir a torneira e molhar as mãos | Aplicar o sabonete nas mãos | Esfregar as mãos por 20 segundos | Enxaguar o sabonete e secar com a toalha"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Enviar uma Carta",
                options: ["Escrever o endereço e colar o selo", "Depositar o envelope na caixa de correio", "Escrever a mensagem no papel", "Colocar a carta dentro do envelope"],
                correctAnswer: "Escrever a mensagem no papel | Colocar a carta dentro do envelope | Escrever o endereço e colar o selo | Depositar o envelope na caixa de correio"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escovar os Dentes",
                options: ["Lavar a escova de dente", "Colocar pasta de dente na escova", "Escovar os dentes com movimentos circulares", "Enxaguar a boca com água"],
                correctAnswer: "Colocar pasta de dente na escova | Escovar os dentes com movimentos circulares | Enxaguar a boca com água | Lavar a escova de dente"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer um Sanduíche",
                options: ["Pegar duas fatias de pão", "Passar manteiga ou maionese no pão", "Colocar o queijo e o presunto", "Juntar as fatias de pão"],
                correctAnswer: "Pegar duas fatias de pão | Passar manteiga ou maionese no pão | Colocar o queijo e o presunto | Juntar as fatias de pão"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Passar Café",
                options: ["Colocar o pó de café no filtro", "Ligar a cafeteira para passar o café", "Servir o café quente na xícara", "Colocar água na cafeteira"],
                correctAnswer: "Colocar água na cafeteira | Colocar o pó de café no filtro | Ligar a cafeteira para passar o café | Servir o café quente na xícara"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Regar as Plantas",
                options: ["Despejar a água na terra com cuidado", "Guardar o regador no lugar", "Encher o regador com água", "Caminhar até os vasos de plantas"],
                correctAnswer: "Encher o regador com água | Caminhar até os vasos de plantas | Despejar a água na terra com cuidado | Guardar o regador no lugar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Ligação",
                options: ["Conversar e desligar a ligação", "Pegar o celular na mão", "Digitar o número de telefone", "Esperar chamar e saudar a pessoa"],
                correctAnswer: "Pegar o celular na mão | Digitar o número de telefone | Esperar chamar e saudar a pessoa | Conversar e desligar a ligação"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vestir-se pela Manhã",
                options: ["Colocar as roupas íntimas", "Vestir a camiseta e a calça", "Calçar as meias nos pés", "Calçar os sapatos e amarrar"],
                correctAnswer: "Colocar as roupas íntimas | Vestir a camiseta e a calça | Calçar as meias nos pés | Calçar os sapatos e amarrar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sair de Casa",
                options: ["Apagar todas as luzes da casa", "Sair e fechar a porta principal", "Trancar a porta com a chave", "Pegar as chaves e o celular"],
                correctAnswer: "Pegar as chaves e o celular | Apagar todas as luzes da casa | Sair e fechar a porta principal | Trancar a porta com a chave"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Salada",
                options: ["Adicionar sal, azeite e limão", "Misturar tudo em uma tigela", "Lavar bem as verduras em água corrente", "Cortar o tomate e o pepino em fatias"],
                correctAnswer: "Lavar bem as verduras em água corrente | Cortar o tomate e o pepino em fatias | Adicionar sal, azeite e limão | Misturar tudo em uma tigela"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limpar a Mesa",
                options: ["Secar a mesa com um pano limpo", "Guardar os alimentos na geladeira", "Levar a louça suja para a pia", "Passar um pano úmido na mesa"],
                correctAnswer: "Guardar os alimentos na geladeira | Levar a louça suja para a pia | Passar um pano úmido na mesa | Secar a mesa com um pano limpo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Plantar uma Flor",
                options: ["Cavar um pequeno buraco na terra", "Colocar a muda de flor no buraco", "Preencher o espaço com terra adubada", "Regar a flor recém-plantada"],
                correctAnswer: "Cavar um pequeno buraco na terra | Colocar a muda de flor no buraco | Preencher o espaço com terra adubada | Regar a flor recém-plantada"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar Ovos Mexidos",
                options: ["Quebrar os ovos diretamente na frigideira", "Adicionar uma pitada de sal", "Mexer os ovos até cozinhar", "Aquecer a frigideira com um pouco de manteiga"],
                correctAnswer: "Aquecer a frigideira com um pouco de manteiga | Quebrar os ovos diretamente na frigideira | Adicionar uma pitada de sal | Mexer os ovos até cozinhar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar Roupa",
                options: ["Adicionar o sabão em pó no compartimento", "Selecionar o ciclo e ligar a máquina", "Separar as roupas por cores", "Colocar as roupas na máquina de lavar"],
                correctAnswer: "Separar as roupas por cores | Colocar as roupas na máquina de lavar | Adicionar o sabão em pó no compartimento | Selecionar o ciclo e ligar a máquina"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limpar os Sapatos",
                options: ["Deixar secar na sombra", "Remover a poeira seca do sapato com pano", "Aplicar a graxa de sapato uniformemente", "Lustrar com a escova apropriada"],
                correctAnswer: "Remover a poeira seca do sapato com pano | Aplicar a graxa de sapato uniformemente | Lustrar com a escova apropriada | Deixar secar na sombra"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ligar o Computador",
                options: ["Pressionar o botão de ligar na CPU", "Aguardar o sistema operacional carregar", "Digitar a senha de usuário", "Abrir o navegador de internet"],
                correctAnswer: "Pressionar o botão de ligar na CPU | Aguardar o sistema operacional carregar | Digitar a senha de usuário | Abrir o navegador de internet"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer Compras",
                options: ["Ir até o supermercado local", "Colocar os itens selecionados no carrinho", "Pagar os produtos no caixa", "Escrever a lista de itens necessários"],
                correctAnswer: "Escrever a lista de itens necessários | Ir até o supermercado local | Colocar os itens selecionados no carrinho | Pagar os produtos no caixa"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cortar Melancia",
                options: ["Cortar ao meio com uma faca grande", "Fatiar em pedaços menores", "Lavar a melancia em água corrente", "Colocar a fruta sobre a tábua de corte"],
                correctAnswer: "Lavar a melancia em água corrente | Colocar a fruta sobre a tábua de corte | Cortar ao meio com uma faca grande | Fatiar em pedaços menores"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Acender uma Vela",
                options: ["Apagar o fósforo com um sopro leve", "Colocar a vela em um castiçal firme", "Pegar a caixa de fósforos ou isqueiro", "Acender o pavio da vela com cuidado"],
                correctAnswer: "Colocar a vela em um castiçal firme | Pegar a caixa de fósforos ou isqueiro | Acender o pavio da vela com cuidado | Apagar o fósforo com um sopro leve"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar um Chá (Opção 21)",
                options: ["Ferver a água na chaleira", "Colocar o saquinho de chá na xícara", "Despejar a água quente na xícara", "Esperar 3 minutos e beber"],
                correctAnswer: "Ferver a água na chaleira | Colocar o saquinho de chá na xícara | Despejar a água quente na xícara | Esperar 3 minutos e beber"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar as Mãos (Opção 22)",
                options: ["Aplicar o sabonete nas mãos", "Esfregar as mãos por 20 segundos", "Enxaguar o sabonete e secar com a toalha", "Abrir a torneira e molhar as mãos"],
                correctAnswer: "Abrir a torneira e molhar as mãos | Aplicar o sabonete nas mãos | Esfregar as mãos por 20 segundos | Enxaguar o sabonete e secar com a toalha"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Enviar uma Carta (Opção 23)",
                options: ["Escrever o endereço e colar o selo", "Depositar o envelope na caixa de correio", "Escrever a mensagem no papel", "Colocar a carta dentro do envelope"],
                correctAnswer: "Escrever a mensagem no papel | Colocar a carta dentro do envelope | Escrever o endereço e colar o selo | Depositar o envelope na caixa de correio"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escovar os Dentes (Opção 24)",
                options: ["Lavar a escova de dente", "Colocar pasta de dente na escova", "Escovar os dentes com movimentos circulares", "Enxaguar a boca com água"],
                correctAnswer: "Colocar pasta de dente na escova | Escovar os dentes com movimentos circulares | Enxaguar a boca com água | Lavar a escova de dente"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer um Sanduíche (Opção 25)",
                options: ["Pegar duas fatias de pão", "Passar manteiga ou maionese no pão", "Colocar o queijo e o presunto", "Juntar as fatias de pão"],
                correctAnswer: "Pegar duas fatias de pão | Passar manteiga ou maionese no pão | Colocar o queijo e o presunto | Juntar as fatias de pão"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Passar Café (Opção 26)",
                options: ["Colocar o pó de café no filtro", "Ligar a cafeteira para passar o café", "Servir o café quente na xícara", "Colocar água na cafeteira"],
                correctAnswer: "Colocar água na cafeteira | Colocar o pó de café no filtro | Ligar a cafeteira para passar o café | Servir o café quente na xícara"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Regar as Plantas (Opção 27)",
                options: ["Despejar a água na terra com cuidado", "Guardar o regador no lugar", "Encher o regador com água", "Caminhar até os vasos de plantas"],
                correctAnswer: "Encher o regador com água | Caminhar até os vasos de plantas | Despejar a água na terra com cuidado | Guardar o regador no lugar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Ligação (Opção 28)",
                options: ["Conversar e desligar a ligação", "Pegar o celular na mão", "Digitar o número de telefone", "Esperar chamar e saudar a pessoa"],
                correctAnswer: "Pegar o celular na mão | Digitar o número de telefone | Esperar chamar e saudar a pessoa | Conversar e desligar a ligação"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vestir-se pela Manhã (Opção 29)",
                options: ["Colocar as roupas íntimas", "Vestir a camiseta e a calça", "Calçar as meias nos pés", "Calçar os sapatos e amarrar"],
                correctAnswer: "Colocar as roupas íntimas | Vestir a camiseta e a calça | Calçar as meias nos pés | Calçar os sapatos e amarrar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sair de Casa (Opção 30)",
                options: ["Apagar todas as luzes da casa", "Sair e fechar a porta principal", "Trancar a porta com a chave", "Pegar as chaves e o celular"],
                correctAnswer: "Pegar as chaves e o celular | Apagar todas as luzes da casa | Sair e fechar a porta principal | Trancar a porta com a chave"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Salada (Opção 31)",
                options: ["Adicionar sal, azeite e limão", "Misturar tudo em uma tigela", "Lavar bem as verduras em água corrente", "Cortar o tomate e o pepino em fatias"],
                correctAnswer: "Lavar bem as verduras em água corrente | Cortar o tomate e o pepino em fatias | Adicionar sal, azeite e limão | Misturar tudo em uma tigela"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limpar a Mesa (Opção 32)",
                options: ["Secar a mesa com um pano limpo", "Guardar os alimentos na geladeira", "Levar a louça suja para a pia", "Passar um pano úmido na mesa"],
                correctAnswer: "Guardar os alimentos na geladeira | Levar a louça suja para a pia | Passar um pano úmido na mesa | Secar a mesa com um pano limpo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Plantar uma Flor (Opção 33)",
                options: ["Cavar um pequeno buraco na terra", "Colocar a muda de flor no buraco", "Preencher o espaço com terra adubada", "Regar a flor recém-plantada"],
                correctAnswer: "Cavar um pequeno buraco na terra | Colocar a muda de flor no buraco | Preencher o espaço com terra adubada | Regar a flor recém-plantada"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar Ovos Mexidos (Opção 34)",
                options: ["Quebrar os ovos diretamente na frigideira", "Adicionar uma pitada de sal", "Mexer os ovos até cozinhar", "Aquecer a frigideira com um pouco de manteiga"],
                correctAnswer: "Aquecer a frigideira com um pouco de manteiga | Quebrar os ovos diretamente na frigideira | Adicionar uma pitada de sal | Mexer os ovos até cozinhar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar Roupa (Opção 35)",
                options: ["Adicionar o sabão em pó no compartimento", "Selecionar o ciclo e ligar a máquina", "Separar as roupas por cores", "Colocar as roupas na máquina de lavar"],
                correctAnswer: "Separar as roupas por cores | Colocar as roupas na máquina de lavar | Adicionar o sabão em pó no compartimento | Selecionar o ciclo e ligar a máquina"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limpar os Sapatos (Opção 36)",
                options: ["Deixar secar na sombra", "Remover a poeira seca do sapato com pano", "Aplicar a graxa de sapato uniformemente", "Lustrar com a escova apropriada"],
                correctAnswer: "Remover a poeira seca do sapato com pano | Aplicar a graxa de sapato uniformemente | Lustrar com a escova apropriada | Deixar secar na sombra"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ligar o Computador (Opção 37)",
                options: ["Pressionar o botão de ligar na CPU", "Aguardar o sistema operacional carregar", "Digitar a senha de usuário", "Abrir o navegador de internet"],
                correctAnswer: "Pressionar o botão de ligar na CPU | Aguardar o sistema operacional carregar | Digitar a senha de usuário | Abrir o navegador de internet"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer Compras (Opção 38)",
                options: ["Ir até o supermercado local", "Colocar os itens selecionados no carrinho", "Pagar os produtos no caixa", "Escrever a lista de itens necessários"],
                correctAnswer: "Escrever a lista de itens necessários | Ir até o supermercado local | Colocar os itens selecionados no carrinho | Pagar os produtos no caixa"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cortar Melancia (Opção 39)",
                options: ["Cortar ao meio com uma faca grande", "Fatiar em pedaços menores", "Lavar a melancia em água corrente", "Colocar a fruta sobre a tábua de corte"],
                correctAnswer: "Lavar a melancia em água corrente | Colocar a fruta sobre a tábua de corte | Cortar ao meio com uma faca grande | Fatiar em pedaços menores"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Acender uma Vela (Opção 40)",
                options: ["Apagar o fósforo com um sopro leve", "Colocar a vela em um castiçal firme", "Pegar a caixa de fósforos ou isqueiro", "Acender o pavio da vela com cuidado"],
                correctAnswer: "Colocar a vela em um castiçal firme | Pegar a caixa de fósforos ou isqueiro | Acender o pavio da vela com cuidado | Apagar o fósforo com um sopro leve"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar um Chá (Opção 41)",
                options: ["Ferver a água na chaleira", "Colocar o saquinho de chá na xícara", "Despejar a água quente na xícara", "Esperar 3 minutos e beber"],
                correctAnswer: "Ferver a água na chaleira | Colocar o saquinho de chá na xícara | Despejar a água quente na xícara | Esperar 3 minutos e beber"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar as Mãos (Opção 42)",
                options: ["Aplicar o sabonete nas mãos", "Esfregar as mãos por 20 segundos", "Enxaguar o sabonete e secar com a toalha", "Abrir a torneira e molhar as mãos"],
                correctAnswer: "Abrir a torneira e molhar as mãos | Aplicar o sabonete nas mãos | Esfregar as mãos por 20 segundos | Enxaguar o sabonete e secar com a toalha"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Enviar uma Carta (Opção 43)",
                options: ["Escrever o endereço e colar o selo", "Depositar o envelope na caixa de correio", "Escrever a mensagem no papel", "Colocar a carta dentro do envelope"],
                correctAnswer: "Escrever a mensagem no papel | Colocar a carta dentro do envelope | Escrever o endereço e colar o selo | Depositar o envelope na caixa de correio"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escovar os Dentes (Opção 44)",
                options: ["Lavar a escova de dente", "Colocar pasta de dente na escova", "Escovar os dentes com movimentos circulares", "Enxaguar a boca com água"],
                correctAnswer: "Colocar pasta de dente na escova | Escovar os dentes com movimentos circulares | Enxaguar a boca com água | Lavar a escova de dente"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer um Sanduíche (Opção 45)",
                options: ["Pegar duas fatias de pão", "Passar manteiga ou maionese no pão", "Colocar o queijo e o presunto", "Juntar as fatias de pão"],
                correctAnswer: "Pegar duas fatias de pão | Passar manteiga ou maionese no pão | Colocar o queijo e o presunto | Juntar as fatias de pão"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Passar Café (Opção 46)",
                options: ["Colocar o pó de café no filtro", "Ligar a cafeteira para passar o café", "Servir o café quente na xícara", "Colocar água na cafeteira"],
                correctAnswer: "Colocar água na cafeteira | Colocar o pó de café no filtro | Ligar a cafeteira para passar o café | Servir o café quente na xícara"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Regar as Plantas (Opção 47)",
                options: ["Despejar a água na terra com cuidado", "Guardar o regador no lugar", "Encher o regador com água", "Caminhar até os vasos de plantas"],
                correctAnswer: "Encher o regador com água | Caminhar até os vasos de plantas | Despejar a água na terra com cuidado | Guardar o regador no lugar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Ligação (Opção 48)",
                options: ["Conversar e desligar a ligação", "Pegar o celular na mão", "Digitar o número de telefone", "Esperar chamar e saudar a pessoa"],
                correctAnswer: "Pegar o celular na mão | Digitar o número de telefone | Esperar chamar e saudar a pessoa | Conversar e desligar a ligação"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vestir-se pela Manhã (Opção 49)",
                options: ["Colocar as roupas íntimas", "Vestir a camiseta e a calça", "Calçar as meias nos pés", "Calçar os sapatos e amarrar"],
                correctAnswer: "Colocar as roupas íntimas | Vestir a camiseta e a calça | Calçar as meias nos pés | Calçar os sapatos e amarrar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sair de Casa (Opção 50)",
                options: ["Apagar todas as luzes da casa", "Sair e fechar a porta principal", "Trancar a porta com a chave", "Pegar as chaves e o celular"],
                correctAnswer: "Pegar as chaves e o celular | Apagar todas as luzes da casa | Sair e fechar a porta principal | Trancar a porta com a chave"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Salada (Opção 51)",
                options: ["Adicionar sal, azeite e limão", "Misturar tudo em uma tigela", "Lavar bem as verduras em água corrente", "Cortar o tomate e o pepino em fatias"],
                correctAnswer: "Lavar bem as verduras em água corrente | Cortar o tomate e o pepino em fatias | Adicionar sal, azeite e limão | Misturar tudo em uma tigela"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limpar a Mesa (Opção 52)",
                options: ["Secar a mesa com um pano limpo", "Guardar os alimentos na geladeira", "Levar a louça suja para a pia", "Passar um pano úmido na mesa"],
                correctAnswer: "Guardar os alimentos na geladeira | Levar a louça suja para a pia | Passar um pano úmido na mesa | Secar a mesa com um pano limpo"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Plantar uma Flor (Opção 53)",
                options: ["Cavar um pequeno buraco na terra", "Colocar a muda de flor no buraco", "Preencher o espaço com terra adubada", "Regar a flor recém-plantada"],
                correctAnswer: "Cavar um pequeno buraco na terra | Colocar a muda de flor no buraco | Preencher o espaço com terra adubada | Regar a flor recém-plantada"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar Ovos Mexidos (Opção 54)",
                options: ["Quebrar os ovos diretamente na frigideira", "Adicionar uma pitada de sal", "Mexer os ovos até cozinhar", "Aquecer a frigideira com um pouco de manteiga"],
                correctAnswer: "Aquecer a frigideira com um pouco de manteiga | Quebrar os ovos diretamente na frigideira | Adicionar uma pitada de sal | Mexer os ovos até cozinhar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar Roupa (Opção 55)",
                options: ["Adicionar o sabão em pó no compartimento", "Selecionar o ciclo e ligar a máquina", "Separar as roupas por cores", "Colocar as roupas na máquina de lavar"],
                correctAnswer: "Separar as roupas por cores | Colocar as roupas na máquina de lavar | Adicionar o sabão em pó no compartimento | Selecionar o ciclo e ligar a máquina"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Limpar os Sapatos (Opção 56)",
                options: ["Deixar secar na sombra", "Remover a poeira seca do sapato com pano", "Aplicar a graxa de sapato uniformemente", "Lustrar com a escova apropriada"],
                correctAnswer: "Remover a poeira seca do sapato com pano | Aplicar a graxa de sapato uniformemente | Lustrar com a escova apropriada | Deixar secar na sombra"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Ligar o Computador (Opção 57)",
                options: ["Pressionar o botão de ligar na CPU", "Aguardar o sistema operacional carregar", "Digitar a senha de usuário", "Abrir o navegador de internet"],
                correctAnswer: "Pressionar o botão de ligar na CPU | Aguardar o sistema operacional carregar | Digitar a senha de usuário | Abrir o navegador de internet"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer Compras (Opção 58)",
                options: ["Ir até o supermercado local", "Colocar os itens selecionados no carrinho", "Pagar os produtos no caixa", "Escrever a lista de itens necessários"],
                correctAnswer: "Escrever a lista de itens necessários | Ir até o supermercado local | Colocar os itens selecionados no carrinho | Pagar os produtos no caixa"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Cortar Melancia (Opção 59)",
                options: ["Cortar ao meio com uma faca grande", "Fatiar em pedaços menores", "Lavar a melancia em água corrente", "Colocar a fruta sobre a tábua de corte"],
                correctAnswer: "Lavar a melancia em água corrente | Colocar a fruta sobre a tábua de corte | Cortar ao meio com uma faca grande | Fatiar em pedaços menores"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Acender uma Vela (Opção 60)",
                options: ["Apagar o fósforo com um sopro leve", "Colocar a vela em um castiçal firme", "Pegar a caixa de fósforos ou isqueiro", "Acender o pavio da vela com cuidado"],
                correctAnswer: "Colocar a vela em um castiçal firme | Pegar a caixa de fósforos ou isqueiro | Acender o pavio da vela com cuidado | Apagar o fósforo com um sopro leve"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Preparar um Chá (Opção 61)",
                options: ["Ferver a água na chaleira", "Colocar o saquinho de chá na xícara", "Despejar a água quente na xícara", "Esperar 3 minutos e beber"],
                correctAnswer: "Ferver a água na chaleira | Colocar o saquinho de chá na xícara | Despejar a água quente na xícara | Esperar 3 minutos e beber"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Lavar as Mãos (Opção 62)",
                options: ["Aplicar o sabonete nas mãos", "Esfregar as mãos por 20 segundos", "Enxaguar o sabonete e secar com a toalha", "Abrir a torneira e molhar as mãos"],
                correctAnswer: "Abrir a torneira e molhar as mãos | Aplicar o sabonete nas mãos | Esfregar as mãos por 20 segundos | Enxaguar o sabonete e secar com a toalha"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Enviar uma Carta (Opção 63)",
                options: ["Escrever o endereço e colar o selo", "Depositar o envelope na caixa de correio", "Escrever a mensagem no papel", "Colocar a carta dentro do envelope"],
                correctAnswer: "Escrever a mensagem no papel | Colocar a carta dentro do envelope | Escrever o endereço e colar o selo | Depositar o envelope na caixa de correio"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Escovar os Dentes (Opção 64)",
                options: ["Lavar a escova de dente", "Colocar pasta de dente na escova", "Escovar os dentes com movimentos circulares", "Enxaguar a boca com água"],
                correctAnswer: "Colocar pasta de dente na escova | Escovar os dentes com movimentos circulares | Enxaguar a boca com água | Lavar a escova de dente"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer um Sanduíche (Opção 65)",
                options: ["Pegar duas fatias de pão", "Passar manteiga ou maionese no pão", "Colocar o queijo e o presunto", "Juntar as fatias de pão"],
                correctAnswer: "Pegar duas fatias de pão | Passar manteiga ou maionese no pão | Colocar o queijo e o presunto | Juntar as fatias de pão"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Passar Café (Opção 66)",
                options: ["Colocar o pó de café no filtro", "Ligar a cafeteira para passar o café", "Servir o café quente na xícara", "Colocar água na cafeteira"],
                correctAnswer: "Colocar água na cafeteira | Colocar o pó de café no filtro | Ligar a cafeteira para passar o café | Servir o café quente na xícara"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Regar as Plantas (Opção 67)",
                options: ["Despejar a água na terra com cuidado", "Guardar o regador no lugar", "Encher o regador com água", "Caminhar até os vasos de plantas"],
                correctAnswer: "Encher o regador com água | Caminhar até os vasos de plantas | Despejar a água na terra com cuidado | Guardar o regador no lugar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Fazer uma Ligação (Opção 68)",
                options: ["Conversar e desligar a ligação", "Pegar o celular na mão", "Digitar o número de telefone", "Esperar chamar e saudar a pessoa"],
                correctAnswer: "Pegar o celular na mão | Digitar o número de telefone | Esperar chamar e saudar a pessoa | Conversar e desligar a ligação"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Vestir-se pela Manhã (Opção 69)",
                options: ["Colocar as roupas íntimas", "Vestir a camiseta e a calça", "Calçar as meias nos pés", "Calçar os sapatos e amarrar"],
                correctAnswer: "Colocar as roupas íntimas | Vestir a camiseta e a calça | Calçar as meias nos pés | Calçar os sapatos e amarrar"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Sair de Casa (Opção 70)",
                options: ["Apagar todas as luzes da casa", "Sair e fechar a porta principal", "Trancar a porta com a chave", "Pegar as chaves e o celular"],
                correctAnswer: "Pegar as chaves e o celular | Apagar todas as luzes da casa | Sair e fechar a porta principal | Trancar a porta com a chave"
            )
        ]
    )

    // MARK: - Compras de Supermercado
    private static let groceryShopping = Exercise(
        id: UUID(),
        title: "Compras de Supermercado",
        instructions: "Compare os preços e escolha a melhor opção de valor.",
        section: .functionalSkills,
        type: .comparison,
        difficulty: .easy,
        items: [
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 1):",
                options: ["Pacote de 200g por $4", "Pacote de 400g por $6"],
                correctAnswer: "Pacote de 400g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 2):",
                options: ["Pacote de 300g por $5", "Pacote de 600g por $8"],
                correctAnswer: "Pacote de 600g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 3):",
                options: ["Pacote de 400g por $6", "Pacote de 800g por $10"],
                correctAnswer: "Pacote de 800g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 4):",
                options: ["Pacote de 500g por $7", "Pacote de 1000g por $12"],
                correctAnswer: "Pacote de 1000g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 5):",
                options: ["Pacote de 600g por $4", "Pacote de 1200g por $6"],
                correctAnswer: "Pacote de 1200g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 6):",
                options: ["Pacote de 200g por $5", "Pacote de 400g por $8"],
                correctAnswer: "Pacote de 400g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 7):",
                options: ["Pacote de 300g por $6", "Pacote de 600g por $10"],
                correctAnswer: "Pacote de 600g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 8):",
                options: ["Pacote de 400g por $7", "Pacote de 800g por $12"],
                correctAnswer: "Pacote de 800g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 9):",
                options: ["Pacote de 500g por $4", "Pacote de 1000g por $6"],
                correctAnswer: "Pacote de 1000g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 10):",
                options: ["Pacote de 600g por $5", "Pacote de 1200g por $8"],
                correctAnswer: "Pacote de 1200g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 11):",
                options: ["Pacote de 200g por $6", "Pacote de 400g por $10"],
                correctAnswer: "Pacote de 400g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 12):",
                options: ["Pacote de 300g por $7", "Pacote de 600g por $12"],
                correctAnswer: "Pacote de 600g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 13):",
                options: ["Pacote de 400g por $4", "Pacote de 800g por $6"],
                correctAnswer: "Pacote de 800g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 14):",
                options: ["Pacote de 500g por $5", "Pacote de 1000g por $8"],
                correctAnswer: "Pacote de 1000g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 15):",
                options: ["Pacote de 600g por $6", "Pacote de 1200g por $10"],
                correctAnswer: "Pacote de 1200g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 16):",
                options: ["Pacote de 200g por $7", "Pacote de 400g por $12"],
                correctAnswer: "Pacote de 400g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 17):",
                options: ["Pacote de 300g por $4", "Pacote de 600g por $6"],
                correctAnswer: "Pacote de 600g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 18):",
                options: ["Pacote de 400g por $5", "Pacote de 800g por $8"],
                correctAnswer: "Pacote de 800g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 19):",
                options: ["Pacote de 500g por $6", "Pacote de 1000g por $10"],
                correctAnswer: "Pacote de 1000g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 20):",
                options: ["Pacote de 600g por $7", "Pacote de 1200g por $12"],
                correctAnswer: "Pacote de 1200g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 21):",
                options: ["Pacote de 200g por $4", "Pacote de 400g por $6"],
                correctAnswer: "Pacote de 400g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 22):",
                options: ["Pacote de 300g por $5", "Pacote de 600g por $8"],
                correctAnswer: "Pacote de 600g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 23):",
                options: ["Pacote de 400g por $6", "Pacote de 800g por $10"],
                correctAnswer: "Pacote de 800g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 24):",
                options: ["Pacote de 500g por $7", "Pacote de 1000g por $12"],
                correctAnswer: "Pacote de 1000g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 25):",
                options: ["Pacote de 600g por $4", "Pacote de 1200g por $6"],
                correctAnswer: "Pacote de 1200g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 26):",
                options: ["Pacote de 200g por $5", "Pacote de 400g por $8"],
                correctAnswer: "Pacote de 400g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 27):",
                options: ["Pacote de 300g por $6", "Pacote de 600g por $10"],
                correctAnswer: "Pacote de 600g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 28):",
                options: ["Pacote de 400g por $7", "Pacote de 800g por $12"],
                correctAnswer: "Pacote de 800g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 29):",
                options: ["Pacote de 500g por $4", "Pacote de 1000g por $6"],
                correctAnswer: "Pacote de 1000g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 30):",
                options: ["Pacote de 600g por $5", "Pacote de 1200g por $8"],
                correctAnswer: "Pacote de 1200g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 31):",
                options: ["Pacote de 200g por $6", "Pacote de 400g por $10"],
                correctAnswer: "Pacote de 400g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 32):",
                options: ["Pacote de 300g por $7", "Pacote de 600g por $12"],
                correctAnswer: "Pacote de 600g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 33):",
                options: ["Pacote de 400g por $4", "Pacote de 800g por $6"],
                correctAnswer: "Pacote de 800g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 34):",
                options: ["Pacote de 500g por $5", "Pacote de 1000g por $8"],
                correctAnswer: "Pacote de 1000g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 35):",
                options: ["Pacote de 600g por $6", "Pacote de 1200g por $10"],
                correctAnswer: "Pacote de 1200g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 36):",
                options: ["Pacote de 200g por $7", "Pacote de 400g por $12"],
                correctAnswer: "Pacote de 400g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 37):",
                options: ["Pacote de 300g por $4", "Pacote de 600g por $6"],
                correctAnswer: "Pacote de 600g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 38):",
                options: ["Pacote de 400g por $5", "Pacote de 800g por $8"],
                correctAnswer: "Pacote de 800g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 39):",
                options: ["Pacote de 500g por $6", "Pacote de 1000g por $10"],
                correctAnswer: "Pacote de 1000g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 40):",
                options: ["Pacote de 600g por $7", "Pacote de 1200g por $12"],
                correctAnswer: "Pacote de 1200g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 41):",
                options: ["Pacote de 200g por $4", "Pacote de 400g por $6"],
                correctAnswer: "Pacote de 400g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 42):",
                options: ["Pacote de 300g por $5", "Pacote de 600g por $8"],
                correctAnswer: "Pacote de 600g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 43):",
                options: ["Pacote de 400g por $6", "Pacote de 800g por $10"],
                correctAnswer: "Pacote de 800g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 44):",
                options: ["Pacote de 500g por $7", "Pacote de 1000g por $12"],
                correctAnswer: "Pacote de 1000g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 45):",
                options: ["Pacote de 600g por $4", "Pacote de 1200g por $6"],
                correctAnswer: "Pacote de 1200g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 46):",
                options: ["Pacote de 200g por $5", "Pacote de 400g por $8"],
                correctAnswer: "Pacote de 400g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 47):",
                options: ["Pacote de 300g por $6", "Pacote de 600g por $10"],
                correctAnswer: "Pacote de 600g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 48):",
                options: ["Pacote de 400g por $7", "Pacote de 800g por $12"],
                correctAnswer: "Pacote de 800g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 49):",
                options: ["Pacote de 500g por $4", "Pacote de 1000g por $6"],
                correctAnswer: "Pacote de 1000g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 50):",
                options: ["Pacote de 600g por $5", "Pacote de 1200g por $8"],
                correctAnswer: "Pacote de 1200g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 51):",
                options: ["Pacote de 200g por $6", "Pacote de 400g por $10"],
                correctAnswer: "Pacote de 400g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 52):",
                options: ["Pacote de 300g por $7", "Pacote de 600g por $12"],
                correctAnswer: "Pacote de 600g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 53):",
                options: ["Pacote de 400g por $4", "Pacote de 800g por $6"],
                correctAnswer: "Pacote de 800g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 54):",
                options: ["Pacote de 500g por $5", "Pacote de 1000g por $8"],
                correctAnswer: "Pacote de 1000g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 55):",
                options: ["Pacote de 600g por $6", "Pacote de 1200g por $10"],
                correctAnswer: "Pacote de 1200g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 56):",
                options: ["Pacote de 200g por $7", "Pacote de 400g por $12"],
                correctAnswer: "Pacote de 400g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 57):",
                options: ["Pacote de 300g por $4", "Pacote de 600g por $6"],
                correctAnswer: "Pacote de 600g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 58):",
                options: ["Pacote de 400g por $5", "Pacote de 800g por $8"],
                correctAnswer: "Pacote de 800g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 59):",
                options: ["Pacote de 500g por $6", "Pacote de 1000g por $10"],
                correctAnswer: "Pacote de 1000g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 60):",
                options: ["Pacote de 600g por $7", "Pacote de 1200g por $12"],
                correctAnswer: "Pacote de 1200g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 61):",
                options: ["Pacote de 200g por $4", "Pacote de 400g por $6"],
                correctAnswer: "Pacote de 400g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 62):",
                options: ["Pacote de 300g por $5", "Pacote de 600g por $8"],
                correctAnswer: "Pacote de 600g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 63):",
                options: ["Pacote de 400g por $6", "Pacote de 800g por $10"],
                correctAnswer: "Pacote de 800g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 64):",
                options: ["Pacote de 500g por $7", "Pacote de 1000g por $12"],
                correctAnswer: "Pacote de 1000g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 65):",
                options: ["Pacote de 600g por $4", "Pacote de 1200g por $6"],
                correctAnswer: "Pacote de 1200g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 66):",
                options: ["Pacote de 200g por $5", "Pacote de 400g por $8"],
                correctAnswer: "Pacote de 400g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 67):",
                options: ["Pacote de 300g por $6", "Pacote de 600g por $10"],
                correctAnswer: "Pacote de 600g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 68):",
                options: ["Pacote de 400g por $7", "Pacote de 800g por $12"],
                correctAnswer: "Pacote de 800g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Guaraná lata no supermercado local de Sacramento (Item 69):",
                options: ["Pacote de 500g por $4", "Pacote de 1000g por $6"],
                correctAnswer: "Pacote de 1000g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Polvilho Doce no supermercado local de Los Angeles (Item 70):",
                options: ["Pacote de 600g por $5", "Pacote de 1200g por $8"],
                correctAnswer: "Pacote de 1200g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão de Queijo no supermercado local de San Jose (Item 71):",
                options: ["Pacote de 200g por $6", "Pacote de 400g por $10"],
                correctAnswer: "Pacote de 400g por $10"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Açaí Congelado no supermercado local de Oakland (Item 72):",
                options: ["Pacote de 300g por $7", "Pacote de 600g por $12"],
                correctAnswer: "Pacote de 600g por $12"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Feijão Preto no supermercado local de San Francisco (Item 73):",
                options: ["Pacote de 400g por $4", "Pacote de 800g por $6"],
                correctAnswer: "Pacote de 800g por $6"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Pão Francês no supermercado local de Anaheim (Item 74):",
                options: ["Pacote de 500g por $5", "Pacote de 1000g por $8"],
                correctAnswer: "Pacote de 1000g por $8"
            ),
            ExerciseItem(
                id: UUID(),
                prompt: "Comparação de preços para comprar Brigadeiro Gourmet no supermercado local de Berkeley (Item 75):",
                options: ["Pacote de 600g por $6", "Pacote de 1200g por $10"],
                correctAnswer: "Pacote de 1200g por $10"
            )
        ]
    )
}
