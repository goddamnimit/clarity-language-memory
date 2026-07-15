import Foundation

/// Holds the 14 new Portuguese exercises sourced from the New Exercises (6/27) content library.
/// Covers the Language, Cognition, and Functional Skills sections.
struct PortugueseNewExercisesData {

    /// The complete collection of all 14 new Portuguese exercises.
    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5,
        exercise6,
        exercise7,
        exercise8,
        exercise9,
        exercise10,
        exercise11,
        exercise12,
        exercise13,
        exercise14
    ]

    // MARK: - Exercise 1: Rhyming Pairs
    private static let exercise1 = Exercise(
        title: "Pares de Rimas",
        instructions: "Escolha a palavra que rima com a palavra fornecida.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Qual palavra rima com GATO?", options: ["Cachorro", "Rato", "Sol", "Árvore"], correctAnswer: "Rato", explanation: "Gato e Rato rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com COLA?", options: ["Lápis", "Bola", "Livro", "Mesa"], correctAnswer: "Bola", explanation: "Cola e Bola rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com JARDIM?", options: ["Pudim", "Flor", "Planta", "Terra"], correctAnswer: "Pudim", explanation: "Jardim e Pudim rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com PÃO?", options: ["Mão", "Queijo", "Trigo", "Faca"], correctAnswer: "Mão", explanation: "Pão e Mão rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com JANELA?", options: ["Panela", "Porta", "Vidro", "Chave"], correctAnswer: "Panela", explanation: "Janela e Panela rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com ANEL?", options: ["Papel", "Dedo", "Ouro", "Prata"], correctAnswer: "Papel", explanation: "Anel e Papel rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com CANETA?", options: ["Gaveta", "Papel", "Tinta", "Lápis"], correctAnswer: "Gaveta", explanation: "Caneta e Gaveta rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com PENTE?", options: ["Dente", "Cabelo", "Escova", "Espelho"], correctAnswer: "Dente", explanation: "Pente e Dente rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com CAFÉ?", options: ["Pé", "Xícara", "Bole", "Leite"], correctAnswer: "Pé", explanation: "Café e Pé rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com CHUVA?", options: ["Uva", "Água", "Nuvem", "Vento"], correctAnswer: "Uva", explanation: "Chuva e Uva rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com AMOR?", options: ["Flor", "Coração", "Carinho", "Feliz"], correctAnswer: "Flor", explanation: "Amor e Flor rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com BALÃO?", options: ["Coração", "Céu", "Vento", "Fio"], correctAnswer: "Coração", explanation: "Balão e Coração rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com MALA?", options: ["Sala", "Viagem", "Roupas", "Carro"], correctAnswer: "Sala", explanation: "Mala e Sala rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com SOL?", options: ["Farol", "Lua", "Dia", "Estrela"], correctAnswer: "Farol", explanation: "Sol e Farol rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com CANÇÃO?", options: ["Ação", "Música", "Voz", "Som"], correctAnswer: "Ação", explanation: "Canção e Ação rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com MEIA?", options: ["Teia", "Pé", "Sapato", "Frio"], correctAnswer: "Teia", explanation: "Meia e Teia rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com DADO?", options: ["Cuidado", "Jogo", "Mesa", "Número"], correctAnswer: "Cuidado", explanation: "Dado e Cuidado rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com ESPELHO?", options: ["Vermelho", "Vidro", "Rosto", "Moldura"], correctAnswer: "Vermelho", explanation: "Espelho e Vermelho rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com CÃO?", options: ["Leão", "Gato", "Pata", "Osso"], correctAnswer: "Leão", explanation: "Cão e Leão rimam porque terminam com o mesmo som."),
            ExerciseItem(prompt: "Qual palavra rima com FESTA?", options: ["Testa", "Bolo", "Música", "Dança"], correctAnswer: "Testa", explanation: "Festa e Testa rimam porque terminam com o mesmo som.")
        ]
    )

    // MARK: - Exercise 2: Word Association
    private static let exercise2 = Exercise(
        title: "Associação de Palavras",
        instructions: "Escolha a palavra mais intimamente associada à palavra fornecida.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "MÉDICO", options: ["Hospital", "Aeroporto", "Biblioteca", "Fazenda"], correctAnswer: "Hospital", explanation: "Os médicos trabalham em hospitais para cuidar dos pacientes."),
            ExerciseItem(prompt: "PÃO", options: ["Manteiga", "Martelo", "Sabonete", "Lápis"], correctAnswer: "Manteiga", explanation: "A manteiga é comumente passada no pão."),
            ExerciseItem(prompt: "COZINHA", options: ["Fogão", "Cama", "Chuveiro", "Carro"], correctAnswer: "Fogão", explanation: "O fogão é um eletrodoméstico essencial na cozinha."),
            ExerciseItem(prompt: "BIBLIOTECA", options: ["Livros", "Roupas", "Ferramentas", "Alimentos"], correctAnswer: "Livros", explanation: "As bibliotecas guardam e emprestam livros."),
            ExerciseItem(prompt: "SAPATO", options: ["Meia", "Chapéu", "Luva", "Cinto"], correctAnswer: "Meia", explanation: "As meias são usadas dentro dos sapatos."),
            ExerciseItem(prompt: "ASTRONAUTA", options: ["Espaço", "Oceano", "Floresta", "Deserto"], correctAnswer: "Espaço", explanation: "Os astronautas viajam para o espaço."),
            ExerciseItem(prompt: "PROFESSOR", options: ["Escola", "Fábrica", "Teatro", "Academia"], correctAnswer: "Escola", explanation: "Os professores ensinam alunos nas escolas."),
            ExerciseItem(prompt: "OCEANO", options: ["Peixe", "Pássaro", "Vaca", "Aranha"], correctAnswer: "Peixe", explanation: "Os peixes vivem no oceano."),
            ExerciseItem(prompt: "CARRO", options: ["Pneu", "Asa", "Sela", "Vela"], correctAnswer: "Pneu", explanation: "Os pneus são componentes essenciais dos carros."),
            ExerciseItem(prompt: "CHUVA", options: ["Guarda-chuva", "Óculos de sol", "Luvas", "Cachecol"], correctAnswer: "Guarda-chuva", explanation: "O guarda-chuva protege você da chuva."),
            ExerciseItem(prompt: "FOGO", options: ["Fumaça", "Gelo", "Folha", "Moeda"], correctAnswer: "Fumaça", explanation: "O fogo produz fumaça."),
            ExerciseItem(prompt: "DENTISTA", options: ["Dentes", "Cabelo", "Olhos", "Pés"], correctAnswer: "Dentes", explanation: "Os dentists são especialistas na saúde bucal e dos dentes."),
            ExerciseItem(prompt: "CAFÉ", options: ["Xícara", "Tigela", "Prato", "Garfo"], correctAnswer: "Xícara", explanation: "O café é tipicamente servido em uma xícara."),
            ExerciseItem(prompt: "JARDIM", options: ["Flores", "Computadores", "Fogões", "Casacos"], correctAnswer: "Flores", explanation: "As flores crescem no jardim."),
            ExerciseItem(prompt: "CHAVE", options: ["Fechadura", "Janela", "Telhado", "Chão"], correctAnswer: "Fechadura", explanation: "As chaves são usadas para abrir fechaduras."),
            ExerciseItem(prompt: "CORREIOS", options: ["Carta", "Pão", "Remédio", "Ingresso"], correctAnswer: "Carta", explanation: "As cartas são enviadas pelos correios."),
            ExerciseItem(prompt: "PIANO", options: ["Música", "Pintura", "Argila", "Madeira"], correctAnswer: "Música", explanation: "O piano é um instrumento usado para tocar música."),
            ExerciseItem(prompt: "ABELHA", options: ["Mel", "Leite", "Lã", "Seda"], correctAnswer: "Mel", explanation: "As abelhas produzem mel."),
            ExerciseItem(prompt: "ARANHA", options: ["Teia", "Ninho", "Colmeia", "Toca"], correctAnswer: "Teia", explanation: "As aranhas tecem teias."),
            ExerciseItem(prompt: "AGRICULTOR", options: ["Trator", "Avião", "Submarino", "Trem"], correctAnswer: "Trator", explanation: "Os agricultores usam tratores para trabalhar na terra.")
        ]
    )

    // MARK: - Exercise 3: Complete the Saying
    private static let exercise3 = Exercise(
        title: "Complete o Ditado",
        instructions: "Complete o ditado popular ou expressão conhecida.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Quem casa, quer ___.", options: ["casa", "carro", "festa", "viagem"], correctAnswer: "casa", explanation: "O ditado popular é: Quem casa, quer casa."),
            ExerciseItem(prompt: "Uma imagem vale mais que mil ___.", options: ["Palavras", "Moedas", "Páginas", "Cores"], correctAnswer: "Palavras", explanation: "O ditado popular é: Uma imagem vale mais que mil palavras."),
            ExerciseItem(prompt: "Antes tarde do que ___.", options: ["Nunca", "Cedo", "Sempre", "Depois"], correctAnswer: "Nunca", explanation: "O ditado popular é: Antes tarde do que nunca."),
            ExerciseItem(prompt: "Não conte com o ovo na barriga da ___.", options: ["Galinha", "Vaca", "Pata", "Égua"], correctAnswer: "Galinha", explanation: "O ditado popular é: Não conte com o ovo na barriga da galinha."),
            ExerciseItem(prompt: "Depois da tempestade, vem a ___.", options: ["Bonança", "Chuva", "Neve", "Trovoada"], correctAnswer: "Bonança", explanation: "O ditado popular é: Depois da tempestade, vem a bonança."),
            ExerciseItem(prompt: "Duas cabeças pensam melhor do que ___.", options: ["Uma", "Três", "Quatro", "Nenhuma"], correctAnswer: "Uma", explanation: "O ditado popular é: Duas cabeças pensam melhor do que uma."),
            ExerciseItem(prompt: "Quem quer, dá um ___.", options: ["Jeito", "Grito", "Pulo", "Abraço"], correctAnswer: "Jeito", explanation: "O ditado popular é: Quem quer, dá um jeito."),
            ExerciseItem(prompt: "Cada ovelha com sua ___.", options: ["parelha", "mãe", "amiga", "pastagem"], correctAnswer: "parelha", explanation: "O ditado popular é: Cada ovelha com sua parelha."),
            ExerciseItem(prompt: "Gato escaldado tem medo de água ___.", options: ["fria", "quente", "morna", "suja"], correctAnswer: "fria", explanation: "O ditado popular é: Gato escaldado tem medo de água fria."),
            ExerciseItem(prompt: "O seguro morreu de ___.", options: ["velho", "jovem", "susto", "fome"], correctAnswer: "velho", explanation: "O ditado popular é: O seguro morreu de velho."),
            ExerciseItem(prompt: "Quem não deve, não ___.", options: ["teme", "chora", "fala", "corre"], correctAnswer: "teme", explanation: "O ditado popular é: Quem não deve, não teme."),
            ExerciseItem(prompt: "Mais vale um pássaro na mão do que dois ___.", options: ["Voando", "Cantando", "Comendo", "Dormindo"], correctAnswer: "Voando", explanation: "O ditado popular é: Mais vale um pássaro na mão do que dois voando."),
            ExerciseItem(prompt: "Água mole em pedra dura, tanto bate até que ___.", options: ["Fura", "Quebra", "Racha", "Seca"], correctAnswer: "Fura", explanation: "O ditado popular é: Água mole em pedra dura, tanto bate até que fura."),
            ExerciseItem(prompt: "Quem semeia vento, colhe ___.", options: ["Tempestade", "Chuva", "Sol", "Trigo"], correctAnswer: "Tempestade", explanation: "O ditado popular é: Quem semeia vento, colhe tempestade."),
            ExerciseItem(prompt: "Não há rosa sem ___.", options: ["Espinhos", "Pétalas", "Folhas", "Perfume"], correctAnswer: "Espinhos", explanation: "O ditado popular é: Não há rosa sem espinhos."),
            ExerciseItem(prompt: "Vão-se os anéis, ficam os ___.", options: ["dedos", "braços", "amigos", "bens"], correctAnswer: "dedos", explanation: "O ditado popular é: Vão-se os anéis, fiquem os dedos."),
            ExerciseItem(prompt: "Mente sã em corpo ___.", options: ["são", "doente", "forte", "fraco"], correctAnswer: "são", explanation: "O ditado popular é: Mente sã em corpo são."),
            ExerciseItem(prompt: "A pressa é inimiga da ___.", options: ["Perfeição", "Velocidade", "Preguiça", "Fome"], correctAnswer: "Perfeição", explanation: "O ditado popular é: A pressa é inimiga da perfeição."),
            ExerciseItem(prompt: "Mentira tem perna ___.", options: ["Curta", "Longa", "Fina", "Torta"], correctAnswer: "Curta", explanation: "O ditado popular é: Mentira tem perna curta."),
            ExerciseItem(prompt: "Para bom entendedor, meia palavra ___.", options: ["basta", "resta", "falta", "chega"], correctAnswer: "basta", explanation: "O ditado popular é: Para bom entendedor, meia palavra basta.")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Palavras Compostas",
        instructions: "Escolha a palavra correta para completar a palavra composta.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "GUARDA + ___", options: ["Chuva", "Sol", "Vento", "Mar"], correctAnswer: "Chuva", explanation: "Guarda + Chuva = Guarda-chuva."),
            ExerciseItem(prompt: "BEIJA + ___", options: ["Flor", "Mão", "Céu", "Mar"], correctAnswer: "Flor", explanation: "Beija + Flor = Beija-flor."),
            ExerciseItem(prompt: "PASSA + ___", options: ["Tempo", "Hora", "Dia", "Ano"], correctAnswer: "Tempo", explanation: "Passa + Tempo = Passatempo."),
            ExerciseItem(prompt: "SEGUNDA + ___", options: ["Feira", "Hora", "Dia", "Noite"], correctAnswer: "Feira", explanation: "Segunda + Feira = Segunda-feira."),
            ExerciseItem(prompt: "BATE + ___", options: ["Boca", "Mão", "Pé", "Olho"], correctAnswer: "Boca", explanation: "Bate + Boca = Bate-boca (uma discussão)."),
            ExerciseItem(prompt: "PÃO + DE + ___", options: ["Ló", "Queijo", "Mel", "Forma"], correctAnswer: "Ló", explanation: "Pão + de + Ló = Pão-de-ló."),
            ExerciseItem(prompt: "COUVE + ___", options: ["Flor", "Folha", "Raiz", "Semente"], correctAnswer: "Flor", explanation: "Couve + Flor = Couve-flor."),
            ExerciseItem(prompt: "GIRA + ___", options: ["Sol", "Mundo", "Roda", "Copo"], correctAnswer: "Sol", explanation: "Gira + Sol = Girassol."),
            ExerciseItem(prompt: "SACA + ___", options: ["Rolhas", "Chaves", "Mala", "Porta"], correctAnswer: "Rolhas", explanation: "Saca + Rolhas = Saca-rolhas (abridor de garrafas)."),
            ExerciseItem(prompt: "PORTA + ___", options: ["Retrato", "Mala", "Chaves", "Papel"], correctAnswer: "Retrato", explanation: "Porta + Retrato = Porta-retrato."),
            ExerciseItem(prompt: "PEIXE + ___", options: ["Espada", "Gato", "Cão", "Leão"], correctAnswer: "Espada", explanation: "Peixe + Espada = Peixe-espada."),
            ExerciseItem(prompt: "ARCO + ___", options: ["Íris", "Céu", "Sol", "Chuva"], correctAnswer: "Íris", explanation: "Arco + Íris = Arco-íris."),
            ExerciseItem(prompt: "VIRA + ___", options: ["Lata", "Copo", "Mesa", "Prato"], correctAnswer: "Lata", explanation: "Vira + Lata = Vira-lata."),
            ExerciseItem(prompt: "PICA + ___", options: ["Pau", "Pedra", "Flor", "Folha"], correctAnswer: "Pau", explanation: "Pica + Pau = Pica-pau."),
            ExerciseItem(prompt: "QUEBRA + ___", options: ["Cabeça", "Mola", "Vento", "Mar"], correctAnswer: "Cabeça", explanation: "Quebra + Cabeça = Quebra-cabeça."),
            ExerciseItem(prompt: "BEM + TE + ___", options: ["Vi", "Fiz", "Quis", "Diz"], correctAnswer: "Vi", explanation: "Bem + te + vi = Bem-te-vi."),
            ExerciseItem(prompt: "MEIO + ___", options: ["Dia", "Ano", "Mês", "Século"], correctAnswer: "Dia", explanation: "Meio + Dia = Meio-dia."),
            ExerciseItem(prompt: "PERNA + ___", options: ["Longa", "Curta", "Fina", "Grossa"], correctAnswer: "Longa", explanation: "Perna + Longa = Pernalonga."),
            ExerciseItem(prompt: "ÁGUA + ___", options: ["Viva", "Doce", "Salgada", "Quente"], correctAnswer: "Viva", explanation: "Água + Viva = Água-viva."),
            ExerciseItem(prompt: "LOBO + ___", options: ["Guará", "Terra", "Monte", "Mar"], correctAnswer: "Guará", explanation: "Lobo + Guará = Lobo-guará.")
        ]
    )

    // MARK: - Exercise 5: Prefix and Suffix
    private static let exercise5 = Exercise(
        title: "Prefixo e Sufixo",
        instructions: "Escolha o prefixo ou sufixo correto para completar a palavra.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Qual prefixo significa “não” na palavra INFELIZ?", options: ["in-", "re-", "pré-", "des-"], correctAnswer: "in-", explanation: "O prefixo “in-” indica negação ou oposição, então infeliz significa não feliz."),
            ExerciseItem(prompt: "Qual sufixo indica a profissão ou o agente na palavra DENTISTA?", options: ["-ista", "-mente", "-dade", "-ção"], correctAnswer: "-ista", explanation: "O sufixo “-ista” refere-se a uma pessoa que pratica uma atividade ou profissão."),
            ExerciseItem(prompt: "Escrever algo novamente é ___escrever.", options: ["re", "des", "pré", "sub"], correctAnswer: "re", explanation: "O prefixo “re-” significa repetição ou fazer novamente."),
            ExerciseItem(prompt: "O oposto de fazer é ___fazer.", options: ["des", "in", "re", "contra"], correctAnswer: "des", explanation: "O prefixo “des-” é usado para indicar oposição ou reversão da ação."),
            ExerciseItem(prompt: "O oposto de leal é ___leal.", options: ["des", "in", "im", "anti"], correctAnswer: "des", explanation: "O prefixo “des-” torna leal em seu oposto, desleal."),
            ExerciseItem(prompt: "A educação que ocorre antes da escola é chamada de ___escolar.", options: ["pré", "pós", "sub", "inter"], correctAnswer: "pré", explanation: "O prefixo “pré-” significa anterioridade, antes."),
            ExerciseItem(prompt: "O estado de ser belo é beleza, onde o sufixo é ___.", options: ["-eza", "-ura", "-dade", "-mento"], correctAnswer: "-eza", explanation: "O sufixo “-eza” forma substantivos abstratos a partir de adjetivos."),
            ExerciseItem(prompt: "O oposto de organizar é ___organizar.", options: ["des", "in", "mal", "anti"], correctAnswer: "des", explanation: "O prefixo “des-” forma o antônimo desorganizar."),
            ExerciseItem(prompt: "Ver algo antes de ser lançado é ___ver.", options: ["pré", "re", "pós", "des"], correctAnswer: "pré", explanation: "O prefixo “pré-” significa antes."),
            ExerciseItem(prompt: "A qualidade de ser bondoso é bond___.", options: ["ade", "oso", "eza", "mente"], correctAnswer: "ade", explanation: "O sufixo “-ade” forma substantivos abstratos que indicam uma qualidade."),
            ExerciseItem(prompt: "Um barco que navega sob a água é um ___marino.", options: ["sub", "trans", "super", "mini"], correctAnswer: "sub", explanation: "O prefixo “sub-” significa sob ou abaixo de."),
            ExerciseItem(prompt: "Uma pessoa que toca piano é um pian___.", options: ["ista", "eiro", "ador", "ante"], correctAnswer: "ista", explanation: "O sufixo “-ista” indica o agente ou profissional de uma atividade."),
            ExerciseItem(prompt: "Entender algo de forma errada é ___entender.", options: ["mal", "des", "in", "sub"], correctAnswer: "mal", explanation: "O prefixo “mal-” indica algo feito de forma incorreta ou ruim (malentender)."),
            ExerciseItem(prompt: "Algo que não se pode ver é ___visível.", options: ["in", "des", "im", "anti"], correctAnswer: "in", explanation: "O prefixo “in-” exprime negação (invisível)."),
            ExerciseItem(prompt: "Uma pessoa que ensina é um profess___.", options: ["or", "ista", "eiro", "nte"], correctAnswer: "or", explanation: "O sufixo “-or” indica aquele que realiza a ação de lecionar."),
            ExerciseItem(prompt: "O oposto de próprio é ___próprio.", options: ["im", "in", "des", "anti"], correctAnswer: "im", explanation: "O prefixo “im-” é usado antes de 'p' e 'b' para indicar negação."),
            ExerciseItem(prompt: "Se algo não tem cura, é incur___.", options: ["ável", "oso", "ista", "mento"], correctAnswer: "ável", explanation: "O sufixo “-ável” indica possibilidade ou capacidade de sofrer uma ação."),
            ExerciseItem(prompt: "Aquecer o forno antes de assar é ___aquecer.", options: ["pré", "re", "des", "sub"], correctAnswer: "pré", explanation: "O prefixo “pré-” significa antes."),
            ExerciseItem(prompt: "Uma pessoa que pinta quadros é um pint___.", options: ["or", "ista", "eiro", "nte"], correctAnswer: "or", explanation: "O sufixo “-or” designa o agente da ação (pintor)."),
            ExerciseItem(prompt: "Carregar um programa novamente é ___carregar.", options: ["re", "des", "pré", "sub"], correctAnswer: "re", explanation: "O prefixo “re-” significa repetição.")
        ]
    )

    // MARK: - Exercise 6: Story Recall
    private static let exercise6 = Exercise(
        title: "Recordação de Histórias",
        instructions: "Leia a curta história e depois responda à pergunta sobre ela.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Quem abriu a padaria artesanal na cidade de San Jose?", options: ["Manuel", "António", "Carlos", "José"], correctAnswer: "Manuel", explanation: "A história conta que Manuel realizou seu sonho de abrir uma padaria artesanal.", passage: "Manuel imigrou dos Açores para a Califórnia e, após anos de trabalho, abriu uma padaria artesanal em San Jose chamada 'Sabor Açoriano'. Todos os dias, ele acorda às 4h da manhã para preparar pães frescos e pasteis de nata que atraem clientes de toda a Bay Area."),
            ExerciseItem(prompt: "A qual região da Califórnia Manuel imigrou vindo dos Açores?", options: ["Los Angeles", "San Diego", "Bay Area", "Sacramento"], correctAnswer: "Bay Area", explanation: "O texto diz que ele imigrou para a Califórnia e atrai clientes de toda a Bay Area."),
            ExerciseItem(prompt: "Como se chama a padaria de Manuel?", options: ["Sabor Açoriano", "Pão de Ouro", "Cantinho Lusitano", "Delícia de Portugal"], correctAnswer: "Sabor Açoriano", explanation: "O nome da padaria artesanal aberta por Manuel é 'Sabor Açoriano'."),
            ExerciseItem(prompt: "A que horas Manuel acorda diariamente para assar pães?", options: ["4h da manhã", "6h da manhã", "5h da manhã", "7h da manhã"], correctAnswer: "4h da manhã", explanation: "Manuel acorda diariamente às 4h da manhã para iniciar as preparações."),
            ExerciseItem(prompt: "Quais doces típicos Manuel prepara além de pães frescos?", options: ["Pasteis de nata", "Sonhos", "Queijadas", "Bolos de arroz"], correctAnswer: "Pasteis de nata", explanation: "O texto cita que Manuel prepara pães frescos e pasteis de nata cotidianamente."),
            ExerciseItem(prompt: "Em qual universidade Maria estuda engenharia de software?", options: ["Stanford", "UC Berkeley", "San Jose State University", "Santa Clara University"], correctAnswer: "San Jose State University", explanation: "Maria estuda Engenharia de Software na San Jose State University.", passage: "Maria é neta de imigrantes portugueses estabelecidos em Oakland. Ela estuda Engenharia de Software na San Jose State University e desenvolveu um aplicativo móvel para ajudar os idosos da comunidade a marcar consultas médicas locais gratuitas na paróquia da igreja local."),
            ExerciseItem(prompt: "Onde os avós de Maria se estabeleceram quando imigraram?", options: ["San Francisco", "Oakland", "Hayward", "San Jose"], correctAnswer: "Oakland", explanation: "A história menciona que os avós de Maria se estabeleceram em Oakland."),
            ExerciseItem(prompt: "Qual aplicativo Maria desenvolveu durante seu curso universitário?", options: ["Aplicativo móvel para marcar consultas médicas", "Aplicativo de receitas portuguesas", "Aplicativo de mapas da Bay Area", "Aplicativo de tradução de português"], correctAnswer: "Aplicativo móvel para marcar consultas médicas", explanation: "O aplicativo serve para marcar consultas médicas locais para idosos da comunidade."),
            ExerciseItem(prompt: "Onde os idosos podem realizar as consultas médicas gratuitas?", options: ["Na paróquia da igreja local", "No hospital de San Jose", "Na clínica da universidade", "No centro comunitário de Oakland"], correctAnswer: "Na paróquia da igreja local", explanation: "As consultas médicas gratuitas ocorrem na paróquia da igreja local."),
            ExerciseItem(prompt: "Quem é beneficiado pelo aplicativo móvel desenvolvido por Maria?", options: ["Os idosos da comunidade", "Os estudantes da universidade", "Os médicos do hospital", "Os turistas da Bay Area"], correctAnswer: "Os idosos da comunidade", explanation: "O aplicativo foi planejado especificamente para ajudar os idosos da comunidade."),
            ExerciseItem(prompt: "Qual festival anual a família de João ajuda a organizar na Bay Area?", options: ["Festa do Espírito Santo", "Festival do Vinho", "Festa da Primavera", "Festival de Fado"], correctAnswer: "Festa do Espírito Santo", explanation: "A família de João participa ativamente da organização da Festa do Espírito Santo.", passage: "João mora com sua família em Santa Clara. Todos os anos, eles participam da organização da tradicional Festa do Espírito Santo, que reuni centenas de luso-americanos. João ajuda a preparar a sopa de carne com pão temperado oferecida a todos os visitantes gratuitamente no domingo."),
            ExerciseItem(prompt: "Em qual cidade da Califórnia João reside com sua família?", options: ["Santa Clara", "Fremont", "San Jose", "Palo Alto"], correctAnswer: "Santa Clara", explanation: "João e sua família residem na cidade de Santa Clara."),
            ExerciseItem(prompt: "Quem se reúne no festival anual organizado pela comunidade?", options: ["Luso-americanos de toda a região", "Estudantes universitários", "Turistas de outros países", "Moradores locais de Oakland"], correctAnswer: "Luso-americanos de toda a região", explanation: "O evento cultural reúne centenas de luso-americanos na região."),
            ExerciseItem(prompt: "O que João ajuda a preparar para o almoço festivo?", options: ["Sopa de carne com pão temperado", "Bacalhau à Brás", "Feijoada à portuguesa", "Caldo verde tradicional"], correctAnswer: "Sopa de carne com pão temperado", explanation: "João ajuda a preparar a tradicional sopa de carne com pão temperado."),
            ExerciseItem(prompt: "Em qual dia da semana a sopa gratuita é servida aos visitantes do festival?", options: ["Sexta-feira", "Sábado", "Domingo", "Segunda-feira"], correctAnswer: "Domingo", explanation: "A sopa é servida aos visitantes gratuitamente no domingo do festival.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Sequências Numéricas",
        instructions: "Qual número vem a seguir na sequência?",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "A sequência aumenta adicionando 2 a cada vez."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["22", "24", "25", "30"], correctAnswer: "25", explanation: "A sequência aumenta adicionando 5 a cada vez."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "A sequência aumenta adicionando 10 a cada vez."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["14", "15", "16", "18"], correctAnswer: "15", explanation: "A sequência aumenta adicionando 3 a cada vez."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["5", "4", "3", "2"], correctAnswer: "5", explanation: "A sequência diminui subtraindo 1 a cada vez."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["13", "12", "11", "10"], correctAnswer: "12", explanation: "A sequência diminui subtraindo 2 a cada vez."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "A sequência aumenta adicionando 2 a cada vez (números ímpares)."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "A sequência aumenta adicionando 4 a cada vez."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "A sequência diminui subtraindo 5 a cada vez."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "A sequência diminui subtraindo 10 a cada vez."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "A sequência aumenta adicionando 11 a cada vez."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "40"], correctAnswer: "35", explanation: "A sequência aumenta adicionando 7 a cada vez."),
            ExerciseItem(prompt: "15, 30, 45, 60, ___", options: ["70", "75", "80", "85"], correctAnswer: "75", explanation: "A sequência aumenta adicionando 15 a cada vez."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "15"], correctAnswer: "18", explanation: "A sequência diminui subtraindo 3 a cada vez."),
            ExerciseItem(prompt: "8, 16, 24, 32, ___", options: ["36", "38", "40", "42"], correctAnswer: "40", explanation: "A sequência aumenta adicionando 8 a cada vez."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["26", "24", "22", "20"], correctAnswer: "24", explanation: "A sequência diminui subtraindo 4 a cada vez."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "A sequência aumenta adicionando 6 a cada vez."),
            ExerciseItem(prompt: "80, 75, 70, 65, ___", options: ["62", "60", "58", "55"], correctAnswer: "60", explanation: "A sequência diminui subtraindo 5 a cada vez."),
            ExerciseItem(prompt: "13, 26, 39, 52, ___", options: ["60", "63", "65", "70"], correctAnswer: "65", explanation: "A sequência aumenta adicionando 13 a cada vez."),
            ExerciseItem(prompt: "99, 88, 77, 66, ___", options: ["50", "53", "55", "60"], correctAnswer: "55", explanation: "A sequência diminui subtraindo 11 a cada vez.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Causa e Efeito",
        instructions: "Escolha o resultado mais provável da situação descrita.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Você deixa o sorvete no balcão da cozinha por duas horas em um dia quente. O que acontece?", options: ["Ele fica mais duro", "Ele derrete", "Ele muda de cor", "Ele desaparece"], correctAnswer: "Ele derrete", explanation: "O calor faz o sorvete derreter."),
            ExerciseItem(prompt: "Você esquece de regar sua planta por três semanas. Qual é o resultado mais provável?", options: ["Ela cresce flores", "Ela continua verde", "Ela murcha e seca", "Ela fica azul"], correctAnswer: "Ela murcha e seca", explanation: "As plantas precisam de água para viver; sem ela, murcham e secam."),
            ExerciseItem(prompt: "Uma nuvem escura de tempestade bloqueia o sol e o trovão reverbera. O que provavelmente acontecerá a seguir?", options: ["Vai chover", "Vai ficar mais quente", "A neve cairá imediatamente", "As estrelas vão aparecer"], correctAnswer: "Vai chover", explanation: "Nuvens de tempestade e trovões são indicadores de chuva a caminho."),
            ExerciseItem(prompt: "Você deixa cair uma tigela de vidro em um chão de azulejo duro. Qual é o resultado mais provável?", options: ["Ela rebate de volta", "Ela muda de cor", "Ela se quebra em pedaços", "Ela se transforma em água"], correctAnswer: "Ela se quebra em pedaços", explanation: "O vidro é frágil e se quebra ao cair em superfícies duras."),
            ExerciseItem(prompt: "Você coloca uma fatia de pão na torradeira e a deixa na potência máxima. O que acontece?", options: ["Ela fica encharcada", "Ela queima e fica preta", "Ela continua macia e branca", "Ela desaparece"], correctAnswer: "Ela queima e fica preta", explanation: "O calor excessivo na torradeira queima o pão."),
            ExerciseItem(prompt: "Você deixa os faróis do carro acesos a noite toda. O que acontecerá pela manhã?", options: ["O carro vai andar mais rápido", "A bateria estará descarregada", "O carro mudará de cor", "O motor ligará imediatamente"], correctAnswer: "A bateria estará descarregada", explanation: "Deixar as luzes acesas consome toda a energia da bateria."),
            ExerciseItem(prompt: "Uma forte nevasca cai durante a noite, acumulando quinze centímetros de neve. O que acontece com as estradas?", options: ["Elas continuam secas", "Elas ficam escorregadias e cobertas de neve", "Elas ficam verdes", "Elas evaporam"], correctAnswer: "Elas ficam escorregadias e cobertas de neve", explanation: "A neve acumulada nas estradas torna a direção perigosa."),
            ExerciseItem(prompt: "Você coloca uma fôrma cheia de água no congelador. O que acontece depois de algumas horas?", options: ["A água ferve", "A água se transforma em gelo", "A água evapora", "A água muda de cor"], correctAnswer: "A água se transforma em gelo", explanation: "As temperaturas de congelamento transformam a água líquida em gelo sólido."),
            ExerciseItem(prompt: "Você calça um par de meias grossas de lã e botas pesadas em um dia quente de verão. O que acontece com seus pés?", options: ["Eles ficam frios", "Eles continuam secos", "Eles ficam quentes e suados", "Eles ficam azuis"], correctAnswer: "Eles ficam quentes e suados", explanation: "Camadas grossas retêm calor, causando suor em climas quentes."),
            ExerciseItem(prompt: "Uma pessoa não dorme por 24 horas seguidas. Como ela provavelmente se sentirá?", options: ["Muito enérgica", "Cansada e com sono", "Com fome", "Extremamente feliz"], correctAnswer: "Cansada e com sono", explanation: "A falta de sono resulta em fragilidade e sonolência."),
            ExerciseItem(prompt: "Você adiciona açúcar a uma xícara de chá quente e mexe. O que acontece com o açúcar?", options: ["Ele se transforma em gelo", "Ele desaparece da xícara", "Ele se dissolve no chá", "Ele queima"], correctAnswer: "Ele se dissolve no chá", explanation: "Mexer o açúcar em um líquido quente faz com que ele se dissolva."),
            ExerciseItem(prompt: "Você sai para uma forte chuva sem guarda-chuva ou capa de chuva. Qual é o resultado?", options: ["Você continua seco", "Suas roupas ficam encharcadas", "Você fica azul", "Você sente mais calor"], correctAnswer: "Suas roupas ficam encharcadas", explanation: "A água da chuva cai diretamente sobre você, molhando suas roupas."),
            ExerciseItem(prompt: "Você sopra ar em um balão até ele ficar cheio demais. O que acontece?", options: ["Ele voa até a lua", "Ele estoura", "Ele se transforma em um pássaro", "Ele encolhe"], correctAnswer: "Ele estoura", explanation: "A pressão excessiva do ar excede a capacidade do balão, fazendo-o estourar."),
            ExerciseItem(prompt: "Você apaga todas as luzes de um quarto sem janelas à noite. O que acontece?", options: ["O quarto fica mais claro", "O quarto fica completamente escuro", "O quarto fica verde", "O quarto se enche de luz"], correctAnswer: "O quarto fica completamente escuro", explanation: "A ausência de fontes de luz resulta em escuridão total."),
            ExerciseItem(prompt: "Você não estuda ou se prepara para uma prova difícil. Qual é o resultado mais provável?", options: ["Você tira uma nota perfeita", "Você vai mal na prova", "Você esquece o seu nome", "A prova é cancelada"], correctAnswer: "Você vai mal na prova", explanation: "A falta de preparação torna improvável a aprovação em testes difíceis.")
        ]
    )

    // MARK: - Exercise 9: What Emotion Is This?
    private static let exercise9 = Exercise(
        title: "Que Emoção é Essa?",
        instructions: "Leia a situação e escolha a emoção que a pessoa provavelmente sente.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Sarah acabou de descobrir que ganhou o primeiro lugar em uma competição. Como ela se sente?", options: ["Triste", "Com raiva", "Feliz", "Com medo"], correctAnswer: "Feliz", explanation: "Ganhar uma competição é um evento emocionante e alegre."),
            ExerciseItem(prompt: "David ouve um barulho estranho e alto no andar de baixo no meio da noite. Como ele se sente?", options: ["Feliz", "Com medo", "Entediado", "Animado"], correctAnswer: "Com medo", explanation: "Ruídos inesperados no escuro causam medo ou apreensão."),
            ExerciseItem(prompt: "A melhor amiga de Mary está se mudando para outro estado muito distante. Como Mary se sente?", options: ["Triste", "Com raiva", "Animada", "Com ciúmes"], correctAnswer: "Triste", explanation: "Despedir-se de amigos próximos causa tristeza."),
            ExerciseItem(prompt: "Alguém corta a frente de John em uma longa fila na loja. Como John se sente?", options: ["Feliz", "Com medo", "Irritado", "Envergonhado"], correctAnswer: "Irritado", explanation: "Comportamento rude dos outros normalmente causa irritação ou frustração."),
            ExerciseItem(prompt: "Emily está prestes a fazer um discurso para um público muito grande. Como ela se sente?", options: ["Nervosa", "Entediada", "Triste", "Com raiva"], correctAnswer: "Nervosa", explanation: "Falar em público comumente induz nervosismo ou ansiedade."),
            ExerciseItem(prompt: "O voo de Robert foi cancelado, atrasando suas férias em dois dias. Como ele se sente?", options: ["Frustrado", "Feliz", "Com medo", "Orgulhoso"], correctAnswer: "Frustrado", explanation: "Cancelamentos que atrapalham os planos levam à frustração."),
            ExerciseItem(prompt: "O filho de Lisa se formou na universidade com honras máximas. Como Lisa se sente?", options: ["Orgulhosa", "Com ciúmes", "Triste", "Com medo"], correctAnswer: "Orgulhosa", explanation: "Ver os membros da família terem sucesso nos deixa orgulhosos."),
            ExerciseItem(prompt: "Um funcionário está explicando um formulário complicado pela quarta vez, mas Arthur ainda não consegue entender. Como Arthur se sente?", options: ["Confuso", "Feliz", "Animado", "Orgulhoso"], correctAnswer: "Confuso", explanation: "A incapacidade de compreender informações leva ao sentimento de confusão."),
            ExerciseItem(prompt: "James está esperando em uma sala de espera silenciosa há mais de duas horas sem nada para ler. Como ele se sente?", options: ["Entediado", "Com medo", "Com raiva", "Feliz"], correctAnswer: "Entediado", explanation: "Longas esperas sem estímulo causam tédio."),
            ExerciseItem(prompt: "A família de Ellen deu uma festa de aniversário surpresa para ela com todos os seus amigos. Como ela se sente?", options: ["Surpresa", "Com raiva", "Triste", "Com medo"], correctAnswer: "Surpresa", explanation: "Uma celebração inesperada leva ao sentimento de surpresa."),
            ExerciseItem(prompt: "Um cachorro de rua correu e latiu agressivamente para Karen durante sua caminhada. Como ela se sente?", options: ["Assustada", "Feliz", "Entediada", "Orgulhosa"], correctAnswer: "Assustada", explanation: "Animais agressivos causam medo ou susto."),
            ExerciseItem(prompt: "William perdeu sua aliança de casamento enquanto jardinava. Como ele se sente?", options: ["Chateado", "Animado", "Entediado", "Calmo"], correctAnswer: "Chateado", explanation: "Perder um item de valor sentimental é doloroso e deixa a pessoa chateada."),
            ExerciseItem(prompt: "Patricia recebeu um lindo cartão e flores de seus netos. Como ela se sente?", options: ["Amada", "Com raiva", "Com medo", "Confusa"], correctAnswer: "Amada", explanation: "Gestos gentis da família fazem a pessoa se sentir amada e querida."),
            ExerciseItem(prompt: "O supermercado estava sem o pão específico que Richard queria, então ele teve que comprar outra marca. Como ele se sente?", options: ["Levemente decepcionado", "Aterrorizado", "Furioso", "Eufórico"], correctAnswer: "Levemente decepcionado", explanation: "Não conseguir uma preferência menor leva a uma leve decepção."),
            ExerciseItem(prompt: "Charles passou a tarde toda montando uma estante de livros, e ela ficou perfeita. Como ele se sente?", options: ["Satisfeito", "Triste", "Com medo", "Entediado"], correctAnswer: "Satisfeito", explanation: "Concluir uma tarefa com sucesso leva à satisfação."),
            ExerciseItem(prompt: "Linda acidentalmente deixou cair uma bandeja de bebidas em um restaurante silencioso. Como ela se sente?", options: ["Envergonhada", "Feliz", "Com raiva", "Entediada"], correctAnswer: "Envergonhada", explanation: "Atrair atenção negativa do público para um erro causa constrangimento."),
            ExerciseItem(prompt: "Tomás vai fazer sua primeira viagem ao Havaí amanhã de manhã. Como ele se sente?", options: ["Animado", "Triste", "Com raiva", "Entediado"], correctAnswer: "Animado", explanation: "Antecipar férias divertidas causa animação."),
            ExerciseItem(prompt: "O gato de Susan voltou para casa são e salvo depois de ficar desaparecido por três dias. Como ela se sente?", options: ["Aliviada", "Com raiva", "Com medo", "Confusa"], correctAnswer: "Aliviada", explanation: "Uma resolução positiva para uma situação estressante traz alívio."),
            ExerciseItem(prompt: "A conexão de internet cai a cada cinco minutos enquanto George está tentando trabalhar. Como ele se sente?", options: ["Irritado", "Com medo", "Feliz", "Entediado"], correctAnswer: "Irritado", explanation: "Pequenas interrupções repetitivas causam irritação."),
            ExerciseItem(prompt: "Helen tomou um banho longo e morno após um dia estressante. Como ela se sente?", options: ["Relaxada", "Com raiva", "Com medo", "Nervosa"], correctAnswer: "Relaxada", explanation: "Banhos mornos e momentos de descanso ajudam a pessoa a se sentir relaxada.")
        ]
    )

    // MARK: - Exercise 10: What’s Wrong Here?
    private static let exercise10 = Exercise(
        title: "O Que Está Errado Aqui?",
        instructions: "Escolha o que está errado ou é impossível na frase.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "John comeu o café da manhã à meia-noite antes de ir para a cama.", options: ["As pessoas não comem comida", "O café da manhã é uma refeição matinal, não à meia-noite", "John não deveria dormir", "Meia-noite é à tarde"], correctAnswer: "O café da manhã é uma refeição matinal, não à meia-noite", explanation: "O café da manhã é, por definição, a refeição da manhã que quebra o jejum noturno."),
            ExerciseItem(prompt: "O cachorro latiu para o carteiro e depois voou sobre o telhado para pegar um pássaro.", options: ["Cachorros não latem", "Cachorros não conseguem voar", "Carteiros não entregam correspondência", "Pássaros não voam"], correctAnswer: "Cachorros não conseguem voar", explanation: "Cachorros não têm asas e não podem voar."),
            ExerciseItem(prompt: "Sarah colocou seu casaco quente de inverno e luvas para ir nadar na piscina externa durante o mês de janeiro no Brasil.", options: ["As pessoas não nadam em janeiro", "Você não usa casaco de inverno e luvas para ir nadar", "Piscinas externas não existem", "Casacos são usados no verão"], correctAnswer: "Você não usa casaco de inverno e luvas para ir nadar", explanation: "Nadar requer trajes de banho, e roupas de inverno são inadequadas para a água."),
            ExerciseItem(prompt: "O relógio de ponteiros na parede marcou treze horas no mostrador, então Arthur soube que era hora de seu café matinal.", options: ["Relógios não ficam em paredes", "Relógios analógicos padrão marcam apenas até doze horas", "Café não é uma bebida matinal", "Arthur não bebe café"], correctAnswer: "Relógios analógicos padrão marcam apenas até doze horas", explanation: "Relógios de ponteiros tradicionais exibem as horas de um a doze."),
            ExerciseItem(prompt: "Paul andou com sua bicicleta sobre o lago profundo para visitar seu amigo.", options: ["Bicicletas não andam sobre a água", "Lagos não têm peixes", "Amigos não visitam uns aos outros", "Bicicletas não têm pedais"], correctAnswer: "Bicicletas não andam sobre a água", explanation: "Bicicletas são veículos terrestres e afundam na água."),
            ExerciseItem(prompt: "Linda ferveu alguns cubos de gelo em uma panela para fazer água gelada para beber.", options: ["Cubos de gelo não existem", "Ferver cubos de gelo os transforma em água quente, não fria", "Panelas não contêm gelo", "Água potável não é saudável"], correctAnswer: "Ferver cubos de gelo os transforma em água quente, não fria", explanation: "Ferver aquece o líquido, tornando-o quente em vez de frio."),
            ExerciseItem(prompt: "O peixe subiu na árvore para escapar do gato faminto.", options: ["Peixes não sobem em árvores", "Gatos não comem peixes", "Árvores não têm folhas", "Peixes vivem em árvores"], correctAnswer: "Peixes não sobem em árvores", explanation: "Os peixes vivem na água e não têm membros para subir em árvores."),
            ExerciseItem(prompt: "Roberto usou um garfo para tomar sua sopa de macarrão com frango.", options: ["Garfo não consegue reter o caldo líquido da sopa", "Sopa não é feita de frango", "Roberto deveria usar uma faca", "Sopa não se toma com utensílios"], correctAnswer: "Garfo não consegue reter o caldo líquido da sopa", explanation: "Os garfos têm dentes que deixam os líquidos passarem; a sopa exige uma colher."),
            ExerciseItem(prompt: "Como estava chovendo muito, Nancy pendurou suas roupas molhadas no varal do quintal para secar.", options: ["A chuva não molha as coisas", "As roupas não vão secar ao ar livre sob a chuva", "Varais são usados apenas dentro de casa", "Nancy não usa roupas"], correctAnswer: "As roupas não vão secar ao ar livre sob a chuva", explanation: "A chuva mantém as roupas molhadas, impedindo-as de secar."),
            ExerciseItem(prompt: "O avião pousou em segurança no aeroporto, e todos os passageiros desembarcaram nos trilhos do trem.", options: ["Aviões não pousam em aeroportos", "Passageiros não viajam de avião", "Aeroportos não têm trilhos de trem nos portões de desembarque", "Trens não andam em trilhos"], correctAnswer: "Aeroportos não têm trilhos de trem nos portões de desembarque", explanation: "Os aviões pousam em pistas e param em portões de embarque, não em trilhos de trem."),
            ExerciseItem(prompt: "Helen aumentou o ar-condicionado para deixar a sala de estar mais quente.", options: ["O ar-condicionado resfria o ambiente, não o aquece", "Salas de estar não têm paredes", "Helen não tem uma casa", "Ar-condicionados não usam eletricidade"], correctAnswer: "O ar-condicionado resfria o ambiente, não o aquece", explanation: "Os aparelhos de ar-condicionado são projetados para reduzir a temperatura, não para elevá-la."),
            ExerciseItem(prompt: "O coelho perseguiu o grande lobo cinzento pela floresta.", options: ["Coelhos não vivem em florestas", "Lobos não correm", "Coelhos não perseguem lobos", "Lobos não são cinzentos"], correctAnswer: "Coelhos não perseguem lobos", explanation: "Lobos são predadores e coelhos são presas; os coelhos fogem dos lobos."),
            ExerciseItem(prompt: "James comprou um par de sapatos de couro para suas mãos para mantê-las quentes no inverno.", options: ["Sapatos são usados nos pés, não nas mãos", "Couro não é usado para sapatos", "Mãos não ficam frias", "O inverno não é frio"], correctAnswer: "Sapatos são usados nos pés, não nas mãos", explanation: "Luvas são usadas nas mãos; sapatos são para os pés."),
            ExerciseItem(prompt: "O sol nasceu à meia-noite, iluminando o céu da manhã.", options: ["O sol nasce pela manhã, não à meia-noite", "Meia-noite é à tarde", "O sol não é brilhante", "A manhã é escura"], correctAnswer: "O sol nasce pela manhã, não à meia-noite", explanation: "A meia-noite é o meio da noite, quando o sol não está visível."),
            ExerciseItem(prompt: "Alice ligou a televisão para ouvir sua estação de rádio favorita.", options: ["Televisões mostram vídeo, não são rádios", "Rádios não tocam música", "Alice não gosta de música", "Televisões não têm alto-falantes"], correctAnswer: "Televisões mostram vídeo, não são rádios", explanation: "A televisão é um dispositivo de exibição de vídeo; as estações de rádio são sintonizadas em rádios.")
        ]
    )

    // MARK: - Exercise 11: Reading a Prescription
    private static let exercise11 = Exercise(
        title: "Leitura de Receita Médica",
        instructions: "Leia as informações da receita médica e responda à pergunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Farmácia CVS em San Jose. Instrução: Tomar 1 comprimido duas vezes ao dia com alimentos. Quantos comprimidos você deve tomar ao dia?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Tomar um comprimido duas vezes ao dia resulta em dois comprimidos no total."),
            ExerciseItem(prompt: "Rótulo Walgreens (Oakland): Tomar 2 cápsulas ao deitar. Quando você deve tomar este medicamento?", options: ["Pela manhã", "Com o almoço", "Ao deitar para dormir", "Antes do treino"], correctAnswer: "Ao deitar para dormir", explanation: "O rótulo indica explicitamente 'ao deitar'."),
            ExerciseItem(prompt: "Prescrição Kaiser Permanente (Santa Clara): Tomar 1 comprimido a cada 8 horas para dor. Quantas vezes você pode tomar em 24 horas?", options: ["2 vezes", "3 vezes", "4 vezes", "6 vezes"], correctAnswer: "3 vezes", explanation: "Dividindo 24 horas por intervals de 8 horas, obtêm-se 3 doses diárias."),
            ExerciseItem(prompt: "Farmácia local em Fremont: Amoxicilina 250mg. Tomar 3 vezes ao dia. Manter refrigerado. Onde guardar?", options: ["No freezer", "Na geladeira", "No armário do banheiro", "Sob luz solar direta"], correctAnswer: "Na geladeira", explanation: "Refrigerado significa manter na geladeira em temperatura fria adequada."),
            ExerciseItem(prompt: "Instrução médica (Stanford Health): Evitar suco de toranja enquanto tomar este remédio. Qual bebida deve ser evitada?", options: ["Suco de toranja", "Água mineral", "Leite integral", "Café preto"], correctAnswer: "Suco de toranja", explanation: "O suco de toranja (grapefruit) pode interagir negativamente com certos medicamentos."),
            ExerciseItem(prompt: "Rótulo CVS (San Francisco): Tomar 1 comprimido pela manhã em jejum. Quando você deve tomar o café da manhã?", options: ["Antes de tomar o remédio", "Depois de tomar o remédio", "Junto com o remédio", "Não deve tomar café"], correctAnswer: "Depois de tomar o remédio", explanation: "Tomar em jejum significa ingerir o medicamento antes de consumir qualquer alimento."),
            ExerciseItem(prompt: "Prescrição Wal-Mart (Milpitas): Quantidade: 30 comprimidos. Uso diário: 1 comprimido. Quantos dias dura este frasco?", options: ["10 dias", "15 dias", "30 dias", "60 dias"], correctAnswer: "30 dias", explanation: "Com 30 comprimidos e uso de 1 por dia, o medicamento durará exatamente 30 dias."),
            ExerciseItem(prompt: "Pomada dermatológica (San Jose): Aplicar camada fina na área afetada 2 vezes ao dia. Não ingerir. Como usar?", options: ["Engolir com água", "Aplicar sobre a pele", "Inalar pelo nariz", "Diluir em suco"], correctAnswer: "Aplicar sobre a pele", explanation: "Pomadas dermatológicas são de uso tópico, aplicadas diretamente na pele."),
            ExerciseItem(prompt: "Rótulo Walgreens: Válido até 12/2026. Hoje é janeiro de 2027. É seguro tomar o medicamento?", options: ["Sim, ainda é seguro", "Não, já passou da data de validade", "Somente com água quente", "Apenas metade da dose"], correctAnswer: "Não, já passou da data de validade", explanation: "Medicamentos vencidos podem perder a eficácia ou causar efeitos adversos."),
            ExerciseItem(prompt: "Receita médica (Sunnyvale): Tomar 1 cápsula 1 hora antes de voar. Por que tomar este medicamento?", options: ["Evitar enjoo durante a viagem", "Ajudar a dormir em casa", "Aliviar dor de dente", "Tratar alergia de pele"], correctAnswer: "Evitar enjoo durante a viagem", explanation: "Medicamentos tomados antes de voar geralmente previnem cinetose (enjoo de movimento)."),
            ExerciseItem(prompt: "Colírio oftálmico CVS (Redwood City): Pingar 1 gota em cada olho de manhã e à noite. Onde deve ser aplicado?", options: ["Na boca", "Nos ouvidos", "Nos olhos", "Na pele"], correctAnswer: "Nos olhos", explanation: "Colírios são soluções estéreis formuladas exclusivamente para aplicação ocular."),
            ExerciseItem(prompt: "Walgreens (San Mateo): Tomar 1 comprimido a cada 4 a 6 horas para febre. Máximo de 4 por dia. Qual o limite diário?", options: ["1 comprimido", "2 comprimidos", "4 comprimidos", "6 comprimidos"], correctAnswer: "4 comprimidos", explanation: "O limite diário prescrito na receita é de no máximo 4 comprimidos em 24 horas."),
            ExerciseItem(prompt: "Instrução (Sutter Health): Ingerir com um copo cheio de água. Por que beber água com este comprimido?", options: ["Para dissolver na pele", "Facilitar a deglutição e proteger o estômago", "Mudar o sabor do remédio", "Aumentar a pressão arterial"], correctAnswer: "Facilitar a deglutição e proteger o estômago", explanation: "Beber água ajuda a engolir a cápsula e evita irritações na mucosa esofágica e estomacal."),
            ExerciseItem(prompt: "Rótulo de xarope (Oakland): Tomar 10ml a cada 12 horas. Quantas vezes você toma o xarope por dia?", options: ["1 vez", "2 vezes", "3 vezes", "4 vezes"], correctAnswer: "2 vezes", explanation: "Como o dia tem 24 horas, tomar a cada 12 horas equivale a duas doses diárias."),
            ExerciseItem(prompt: "Instrução Kaiser (San Francisco): Tomar com a refeição da noite. Qual o melhor horário para tomar?", options: ["No café da manhã", "No almoço", "No jantar", "De madrugada"], correctAnswer: "No jantar", explanation: "A refeição da noite é o jantar, garantindo a absorção com alimentos conforme orientado.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Leitura de Cardápio",
        instructions: "Use as informações do cardápio para responder à pergunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Cafeteria em Berkeley. Cardápio: Café Filtrado $3.00, Pão de Queijo $4.00, Suco de Laranja $3.50. Quanto custa o Café Filtrado?", options: ["$3.00", "$4.00", "$3.50", "$7.00"], correctAnswer: "$3.00", explanation: "O preço listado para o Café Filtrado é $3.00."),
            ExerciseItem(prompt: "Padaria brasileira em San Jose: Coxinha $5.00, Brigadeiro $2.50, Guaraná lata $2.00. Qual o item mais barato?", options: ["Coxinha", "Brigadeiro", "Guaraná lata", "Todos custam o mesmo"], correctAnswer: "Guaraná lata", explanation: "O Guaraná em lata custa $2.00, sendo o menor preço do cardápio."),
            ExerciseItem(prompt: "Restaurante em Oakland: Sopa do Dia $6.00, Salada de Frango $9.00, Prato Feito $12.00. Quanto custa a Sopa do Dia?", options: ["$6.00", "$9.00", "$12.00", "$15.00"], correctAnswer: "$6.00", explanation: "A Sopa do Dia está tabelada em $6.00 no cardápio."),
            ExerciseItem(prompt: "Lanchonete na Bay Area: Misto Quente $7.00, Batata Frita $4.00, Refrigerante $2.50. Qual o preço do Misto Quente?", options: ["$7.00", "$4.00", "$2.50", "$11.00"], correctAnswer: "$7.00", explanation: "O preço do Misto Quente é $7.00."),
            ExerciseItem(prompt: "Pastelaria em Hayward: Pastel de Carne $5.00, Pastel de Queijo $4.50. Quanto o de Carne custa a mais que o de Queijo?", options: ["$0.50", "$1.00", "$4.50", "$9.50"], correctAnswer: "$0.50", explanation: "Calculando a diferença: $5.00 menos $4.50 é igual a $0.50."),
            ExerciseItem(prompt: "Café em Palo Alto: Sanduíche de Peru $8.00, Salada Caesar $11.00. Você tem $10.00. O que pode comprar?", options: ["Sanduíche de Peru", "Salada Caesar", "Ambos", "Nenhum deles"], correctAnswer: "Sanduíche de Peru", explanation: "$8.00 é menor que seu orçamento de $10.00, enquanto $11.00 ultrapassa."),
            ExerciseItem(prompt: "Pizzaria em San Francisco: Brotinho (Individual) $9.00, Pizza Grande $18.00. Quanto custa a Brotinho?", options: ["$9.00", "$18.00", "$27.00", "$12.00"], correctAnswer: "$9.00", explanation: "A pizza Brotinho individual custa $9.00."),
            ExerciseItem(prompt: "Café em Sunnyvale: Café Latte $4.50, Croissant $3.50, Adicional de Geleia $1.00. Quanto custa o Croissant com Geleia?", options: ["$3.50", "$4.50", "$5.50", "$8.00"], correctAnswer: "$4.50", explanation: "Somando o Croissant ($3.50) e o Adicional de Geleia ($1.00) temos $4.50."),
            ExerciseItem(prompt: "Restaurante em San José: Prato Infantil (até 10 anos) $7.00, Prato Executivo $14.00. Qual o valor para um filho de 8 anos?", options: ["$7.00", "$14.00", "$10.00", "$21.00"], correctAnswer: "$7.00", explanation: "Para uma criança de 8 anos, aplica-se o preço do Prato Infantil de $7.00."),
            ExerciseItem(prompt: "Lanchonete em Newark: Hambúrguer $9.50, Chips $1.50, Soda $2.00. Quanto custa o Hambúrguer mais a Soda?", options: ["$9.50", "$11.00", "$11.50", "$13.00"], correctAnswer: "$11.50", explanation: "O valor total é a soma do Hambúrguer ($9.50) e da Soda ($2.00), que dá $11.50."),
            ExerciseItem(prompt: "Restaurante em Sausalito: Menu Executivo (11h às 14h) $12.00, Menu Jantar $20.00. São 12h30. Qual o preço do Executivo?", options: ["$12.00", "$20.00", "$15.00", "$8.00"], correctAnswer: "$12.00", explanation: "Como 12h30 está dentro do horário do almoço (11h às 14h), o preço é $12.00."),
            ExerciseItem(prompt: "Café em Fremont: Café Americano $3.00 (refil grátis). Se você tomar 3 xícaras, quanto vai pagar?", options: ["$3.00", "$6.00", "$9.00", "$4.50"], correctAnswer: "$3.00", explanation: "Como o refil é gratuito, você paga apenas pelo valor da primeira xícara, que é $3.00."),
            ExerciseItem(prompt: "Cardápio Vegano em Berkeley: Hambúrguer de Grão-de-bico $10.00, Wrap de Falafel $9.00. Qual o preço do Wrap?", options: ["$9.00", "$10.00", "$19.00", "$1.00"], correctAnswer: "$9.00", explanation: "O preço listado para o Wrap de Falafel é $9.00."),
            ExerciseItem(prompt: "Sorveteria em Richmond: Casquinha Simples $4.00, Casquinha Dupla $6.00, Cobertura Extra $1.50. Quanto custa a Dupla com Cobertura?", options: ["$6.00", "$7.50", "$8.00", "$11.50"], correctAnswer: "$7.50", explanation: "Casquinha Dupla ($6.00) mais Cobertura Extra ($1.50) totaliza $7.50."),
            ExerciseItem(prompt: "Restaurante em Redwood City: Taco de Peixe $4.00, Quesadilla $8.00, Água de Coco $3.00. Qual o prato mais caro?", options: ["Taco de Peixe", "Quesadilla", "Água de Coco", "Todos custam o mesmo"], correctAnswer: "Quesadilla", explanation: "A Quesadilla custa $8.00, sendo o item mais caro da lista.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Compreensão de Contas",
        instructions: "Leia as informações da conta e responda à pergunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Conta PG&E (Eletricidade em San Jose): Total a pagar $65.00. Vencimento: 15 de julho. Qual o valor que deve ser pago?", options: ["$15.00", "$65.00", "$80.00", "Grátis"], correctAnswer: "$65.00", explanation: "O valor total indicado na fatura da PG&E é $65.00."),
            ExerciseItem(prompt: "Conta de Água (Oakland): Vencimento: 10 de outubro. Taxa de atraso: $8.00. Hoje é 12 de outubro. O que acontece se pagar hoje?", options: ["Paga o valor normal", "Paga o valor normal mais a taxa de atraso de $8.00", "Recebe desconto", "Nada acontece"], correctAnswer: "Paga o valor normal mais a taxa de atraso de $8.00", explanation: "Como o vencimento foi dia 10 e hoje é dia 12, a taxa de atraso de $8.00 é aplicada."),
            ExerciseItem(prompt: "Assinatura do San Jose Mercury News: Mensalidade $15.00. Desconto no débito automático: -$2.00. Qual o preço com desconto?", options: ["$15.00", "$17.00", "$13.00", "$2.00"], correctAnswer: "$13.00", explanation: "Subtraindo o desconto do débito automático da mensalidade: $15.00 - $2.00 = $13.00."),
            ExerciseItem(prompt: "Fatura de Internet Comcast: Cobrança atual $50.00. Saldo anterior não pago $20.00. Qual o saldo total a pagar?", options: ["$50.00", "$20.00", "$70.00", "$30.00"], correctAnswer: "$70.00", explanation: "O total devido é a soma do mês atual ($50.00) mais o saldo anterior pendente ($20.00), resultando em $70.00."),
            ExerciseItem(prompt: "Plano de Celular T-Mobile (Santa Clara): Vencimento: 20 de junho. Hoje é 15 de junho. Quantos dias faltam para o vencimento?", options: ["5 dias", "15 dias", "20 dias", "1 dia"], correctAnswer: "5 dias", explanation: "Faltam exatamente 5 dias úteis (de 15 a 20 de junho) para pagar no prazo."),
            ExerciseItem(prompt: "Fatura de Lixo de Hayward: Taxa trimestral (3 meses) de $45.00. Qual o valor proporcional por mês?", options: ["$45.00", "$15.00", "$22.50", "$5.00"], correctAnswer: "$15.00", explanation: "Dividindo o valor trimestral por 3 meses: $45.00 / 3 = $15.00 por mês."),
            ExerciseItem(prompt: "Seguro de Carro (AAA em San Francisco): Fatura semestral (6 meses) de $600.00. Com que frequência é paga esta conta?", options: ["Todo mês", "Duas vezes ao ano (a cada 6 meses)", "Uma vez ao ano", "Toda semana"], correctAnswer: "Duas vezes ao ano (a cada 6 meses)", explanation: "Faturas semestrais ocorrem a cada seis meses, ou seja, duas vezes por ano."),
            ExerciseItem(prompt: "Mensalidade da academia YMCA (Oakland): Plano familiar $80.00. Plano individual $50.00. Quanto a família economiza comparado a dois planos individuais?", options: ["$20.00", "$30.00", "$50.00", "$80.00"], correctAnswer: "$20.00", explanation: "Dois planos individuais custam $100.00 ($50.00 x 2). O familiar custa $80.00, economizando $20.00."),
            ExerciseItem(prompt: "Fatura de Pedágio (FasTrak - Golden Gate Bridge): Tarifa de pedágio $8.20. Taxa administrativa por atraso $5.00. Qual o custo total com atraso?", options: ["$8.20", "$5.00", "$13.20", "$3.20"], correctAnswer: "$13.20", explanation: "O total a pagar com atraso é a tarifa do pedágio mais a taxa administrativa: $8.20 + $5.00 = $13.20."),
            ExerciseItem(prompt: "Conta de Streaming de Vídeo Netflix: Status da conta: SUSPENSO. Saldo pendente: $15.49. Por que o serviço não funciona?", options: ["A internet está instável", "A TV queimou", "A conta foi suspensa por falta de pagamento do saldo pendente", "O aplicativo travou"], correctAnswer: "A conta foi suspensa por falta de pagamento do saldo pendente", explanation: "O status 'SUSPENSO' deve-se ao saldo em atraso não quitado."),
            ExerciseItem(prompt: "Fatura do Clube de Campo Português (San Jose): Mensalidade de sócio $100.00. Taxa de manutenção da piscina $15.00. Qual o valor total?", options: ["$100.00", "$115.00", "$15.00", "$85.00"], correctAnswer: "$115.00", explanation: "O valor total é a soma da mensalidade com a taxa de piscina: $100.00 + $15.00 = $115.00."),
            ExerciseItem(prompt: "Conta de Gás PG&E (Fremont): Consumo no inverno (janeiro) $90.00. Consumo no verão (julho) $30.00. Por que o gás é mais alto em janeiro?", options: ["O gás é mais caro no verão", "Uso intensivo de aquecimento doméstico no inverno", "A casa ficou vazia", "O relógio medidor foi trocado"], correctAnswer: "Uso intensivo de aquecimento doméstico no inverno", explanation: "No inverno, o aquecimento central consome muito mais gás natural para manter a casa aquecida."),
            ExerciseItem(prompt: "Fatura do Cartão de Crédito Wells Fargo: Pagamento mínimo $35.00. Saldo total $800.00. Quanto pagar para evitar multa por atraso?", options: ["$35.00", "$800.00", "$0.00", "$765.00"], correctAnswer: "$35.00", explanation: "O pagamento mínimo exigido ($35.00) evita a cobrança de multas e encargos de atraso imediatos."),
            ExerciseItem(prompt: "Fatura Odontológica (Delta Dental em Milpitas): Custo total $150.00. Cobertura do seguro $120.00. Quanto o paciente deve pagar?", options: ["$150.00", "$120.00", "$30.00", "$0.00"], correctAnswer: "$30.00", explanation: "O paciente paga a diferença não coberta pelo seguro: $150.00 - $120.00 = $30.00."),
            ExerciseItem(prompt: "Fatura do Jornal Público (Assinatura Digital): Renovação automática em 31 de dezembro. Quando cancelar para evitar a cobrança?", options: ["Antes de 31 de dezembro", "Depois de 31 de dezembro", "Durante o mês de janeiro", "Nunca cancelar"], correctAnswer: "Antes de 31 de dezembro", explanation: "Para evitar a renovação automática, o cancelamento deve ser feito antes do dia de cobrança.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "O Que Você Faria?",
        instructions: "Escolha a melhor resposta para a situação descrita.",
        section: .functionalSkills,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Você sente cheiro de fumaça na sua cozinha em San Jose, mas não vê chamas. O que deve fazer primeiro?", options: ["Ignorar e ir deitar", "Verificar o fogão e as conexões de gás", "Ligar para um amigo para conversar", "Ir dormir no quarto"], correctAnswer: "Verificar o fogão e as conexões de gás", explanation: "Checar o fogão e fontes de calor imediatas ajuda a identificar e conter vazamentos ou pequenos focos."),
            ExerciseItem(prompt: "Você está em um supermercado em Oakland e percebe que esqueceu a carteira no carro. O que fazer?", options: ["Pegar os produtos sem pagar", "Pedir ao caixa para guardar o carrinho e buscar a carteira", "Deixar as compras jogadas no corredor", "Discutir com o gerente do mercado"], correctAnswer: "Pedir ao caixa para guardar o carrinho e buscar a carteira", explanation: "Buscar a carteira no veículo é a solução direta e respeitosa com a equipe do estabelecimento."),
            ExerciseItem(prompt: "Um ovo cru cai e se quebra no chão da cozinha de sua casa em Fremont. O que fazer?", options: ["Deixar secar até o dia seguinte", "Limpar imediatamente com pano úmido e detergente", "Colocar um tapete por cima", "Esperar que o gato limpe"], correctAnswer: "Limpar imediatamente com pano úmido e detergente", explanation: "Limpar logo evita acidentes por escorregamento e proliferação de bactérias no piso."),
            ExerciseItem(prompt: "Um amigo da comunidade portuguesa de San José conta que o seu cão faleceu ontem. O que dizer?", options: ["Isso é engraçado", "Sinto muito pela sua perda, estou aqui se precisar", "Você deveria comprar um gato", "Posso pegar os brinquedos dele?"], correctAnswer: "Sinto muito pela sua perda, estou aqui se precisar", explanation: "Oferecer condolências demonstra empatia e apoio emocional ao amigo enlutado."),
            ExerciseItem(prompt: "Você recebe uma ligação misteriosa dizendo que ganhou uma viagem para o Havaí e pedindo dados bancários. O que fazer?", options: ["Passar todos os dados solicitados", "Desligar o telefone e não fornecer nenhuma informação", "Pedir para ligarem mais tarde", "Comemorar com a família no telefone"], correctAnswer: "Desligar o telefone e não fornecer nenhuma informação", explanation: "Golpes por telefone visam roubar dados sensíveis; nunca compartilhe senhas ou dados bancários."),
            ExerciseItem(prompt: "Você se sente tonto e fraco enquanto faz fila sob sol forte no Consulado em São Francisco. O que fazer?", options: ["Continuar de pé e fechar os olhos", "Sentar-se na sombra e beber um pouco de água", "Correr em direção à rua movimentada", "Girar no mesmo lugar de pé"], correctAnswer: "Sentar-se na sombra e beber um pouco de água", explanation: "Sentar na sombra e hidratar-se ajuda a restabelecer a circulação e evita desmaios."),
            ExerciseItem(prompt: "Você nota água vazando por baixo da pia do banheiro em sua casa em Newark. O que fazer primeiro?", options: ["Ligar para o pintor", "Colocar um balde embaixo e fechar o registro de água", "Limpar o chão mais tarde", "Apagar todas as luzes da casa"], correctAnswer: "Colocar um balde embaixo e fechar o registro de água", explanation: "Conter o vazamento fechando o registro evita danos maiores à estrutura do imóvel."),
            ExerciseItem(prompt: "Você foi convidado para um jantar na casa de amigos em Berkeley, mas não poderá comparecer. O que fazer?", options: ["Não aparecer sem avisar", "Avisar os anfitriões com antecedência explicando o motivo", "Chegar muito atrasado de propósito", "Enviar um presente sem responder"], correctAnswer: "Avisar os anfitriões com antecedência explicando o motivo", explanation: "Avisar com antecedência permite que os anfitriões se organizem melhor com os preparativos."),
            ExerciseItem(prompt: "Você quebra sem querer um copo de cristal na casa de um amigo em Palo Alto. Qual a atitude correta?", options: ["Esconder os cacos sob o sofá", "Pedir desculpas e oferecer-se para limpar e repor o item", "Fingir que não foi você", "Culpar o cachorro da casa"], correctAnswer: "Pedir desculpas e oferecer-se para limpar e repor o item", explanation: "Assumir a responsabilidade e ajudar a limpar demonstra civilidade e cuidado com o espaço alheio."),
            ExerciseItem(prompt: "Você perdeu as chaves e ficou trancado do lado de fora da sua casa em Santa Clara. O que fazer?", options: ["Quebrar a janela para entrar", "Ligar para um familiar com cópia da chave ou chamar um chaveiro", "Esperar eternamente na varanda", "Esmurrar a porta"], correctAnswer: "Ligar para um familiar com cópia da chave ou chamar um chaveiro", explanation: "Chamar um profissional ou alguém com cópia é a maneira mais segura de reaver o acesso."),
            ExerciseItem(prompt: "A luz de sua casa em Hayward acabou, mas você vê que os postes da rua continuam acesos. O que verificar?", options: ["O quadro de disjuntores da própria casa", "Comprar uma televisão nova", "Ir dormir imediatamente no escuro", "Ligar para a polícia de trânsito"], correctAnswer: "O quadro de disjuntores da própria casa", explanation: "Se apenas a sua casa está sem energia, o disjuntor principal pode ter desarmado."),
            ExerciseItem(prompt: "Você vê uma vizinha idosa carregando sacolas pesadas de compras no condomínio em Sunnyvale. O que fazer?", options: ["Passar correndo por ela", "Oferecer ajuda para carregar as sacolas até a porta dela", "Tirar uma foto dela", "Dizer para ela andar mais rápido"], correctAnswer: "Oferecer ajuda para carregar as sacolas até a porta dela", explanation: "Ajudar pessoas com dificuldades de mobilidade é um gesto de solidariedade comunitária."),
            ExerciseItem(prompt: "Você toma um gole de café no Starbucks de Cupertino e percebe que está fervendo e queimando a boca. O que fazer?", options: ["Engolir tudo de uma vez rapidamente", "Cuspir discretamente e tomar água fria para aliviar", "Gritar bem alto na cafeteria", "Jogar o copo no chão"], correctAnswer: "Cuspir discretamente e tomar água fria para aliviar", explanation: "Esfriar a mucosa oral com água fria reduz a dor e previne queimaduras graves na boca."),
            ExerciseItem(prompt: "O médico receita um novo remédio, mas você não entendeu as instruções de dosagem. O que fazer?", options: ["Adivinhar a dose por conta própria", "Perguntar ao farmacêutico ou ligar de volta para o médico", "Não tomar o remédio prescrito", "Procurar nas redes sociais opinião de estranhos"], correctAnswer: "Perguntar ao farmacêutico ou ligar de volta para o médico", explanation: "Profissionais de saúde são as únicas fontes seguras para esclarecer dúvidas sobre medicamentos."),
            ExerciseItem(prompt: "Você derrama vinho tinto sem querer no tapete branco da casa de um amigo em San Mateo. O que fazer?", options: ["Colocar uma cadeira por cima para esconder", "Pedir desculpas e ajudar a limpar a mancha imediatamente", "Ir embora da festa de fininho", "Dizer que o vinho era suco de uva"], correctAnswer: "Pedir desculpas e ajudar a limpar a mancha imediatamente", explanation: "Limpar manchas de vinho logo após o ocorrido aumenta as chances de remoção sem estragar o tapete."),
            ExerciseItem(prompt: "O alarme de fumaça de seu apartamento em Richmond apita de forma curta uma vez a cada minuto. O que significa?", options: ["Existe um incêndio ativo", "A bateria está fraca e precisa ser trocada", "O aparelho quebrou definitivamente", "É um aviso de teste padrão semanal"], correctAnswer: "A bateria está fraca e precisa ser trocada", explanation: "Apitos intermitentes em alarmes de fumaça indicam necessidade de substituição das pilhas/baterias."),
            ExerciseItem(prompt: "Você está dirigindo em San Jose e nota um carro de bombeiros com sirene ligada logo atrás. O que fazer?", options: ["Acelerar para correr mais rápido que ele", "Ir para a faixa da direita e dar passagem com segurança", "Frear bruscamente no meio da avenida", "Ignorar e continuar na mesma velocidade"], correctAnswer: "Ir para a faixa da direita e dar passagem com segurança", explanation: "Dar passagem para veículos de emergência é obrigação legal e garante o socorro rápido a quem precisa."),
            ExerciseItem(prompt: "Você recebe um e-mail do banco pedindo para clicar em um link e confirmar sua senha. O que fazer?", options: ["Clicar no link e digitar a senha", "Apagar o e-mail e ligar para o número oficial do banco se tiver dúvidas", "Enviar o e-mail para todos os seus contatos", "Responder o e-mail com a senha digitada"], correctAnswer: "Apagar o e-mail e ligar para o número oficial do banco se tiver dúvidas", explanation: "Bancos legítimos nunca solicitam senhas ou dados confidenciais por links de e-mail."),
            ExerciseItem(prompt: "Você encontra um cão perdido com coleira e número de telefone na rua em Palo Alto. O que fazer?", options: ["Levar o cachorro para casa e adotá-lo sem avisar", "Ligar para o número na coleira para avisar os donos", "Ignorar e continuar andando", "Chamar a polícia rodoviária"], correctAnswer: "Ligar para o número na coleira para avisar os donos", explanation: "Entrar em contato com o telefone gravado na coleira é o modo mais rápido de devolver o animal aos donos."),
            ExerciseItem(prompt: "Você derrama água sobre o teclado do seu laptop de trabalho em Mountain View. O que fazer?", options: ["Continuar digitando normalmente", "Desligar o aparelho imediatamente e remover a fonte de energia", "Secar no forno micro-ondas", "Jogar o aparelho no lixo eletrônico imediatamente"], correctAnswer: "Desligar o aparelho imediatamente e remover a fonte de energia", explanation: "Desligar e retirar a energia previne curto-circuito e danos permanentes aos componentes eletrônicos.")
        ]
    )

}
