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
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Mais vale prevenir do que ___.", options: ["Remediar", "Correr", "Dormir", "Chorar"], correctAnswer: "Remediar", explanation: "O ditado popular é: Mais vale prevenir do que remediar."),
            ExerciseItem(prompt: "Uma imagem vale mais que mil ___.", options: ["Palavras", "Moedas", "Páginas", "Cores"], correctAnswer: "Palavras", explanation: "O ditado popular é: Uma imagem vale mais que mil palavras."),
            ExerciseItem(prompt: "Antes tarde do que ___.", options: ["Nunca", "Cedo", "Sempre", "Depois"], correctAnswer: "Nunca", explanation: "O ditado popular é: Antes tarde do que nunca."),
            ExerciseItem(prompt: "Não conte com o ovo na barriga da ___.", options: ["Galinha", "Vaca", "Pata", "Égua"], correctAnswer: "Galinha", explanation: "O ditado popular é: Não conte com o ovo na barriga da galinha."),
            ExerciseItem(prompt: "Depois da tempestade, vem a ___.", options: ["Bonança", "Chuva", "Neve", "Trovoada"], correctAnswer: "Bonança", explanation: "O ditado popular é: Depois da tempestade, vem a bonança."),
            ExerciseItem(prompt: "Duas cabeças pensam melhor do que ___.", options: ["Uma", "Três", "Quatro", "Nenhuma"], correctAnswer: "Uma", explanation: "O ditado popular é: Duas cabeças pensam melhor do que uma."),
            ExerciseItem(prompt: "Quem quer, dá um ___.", options: ["Jeito", "Grito", "Pulo", "Abraço"], correctAnswer: "Jeito", explanation: "O ditado popular é: Quem quer, dá um jeito."),
            ExerciseItem(prompt: "Quem avisa, amigo ___.", options: ["É", "Fala", "Vai", "Vem"], correctAnswer: "É", explanation: "O ditado popular é: Quem avisa, amigo é."),
            ExerciseItem(prompt: "De grão em grão, a galinha enche o ___.", options: ["Papo", "Bico", "Ninho", "Saco"], correctAnswer: "Papo", explanation: "O ditado popular é: De grão em grão, a galinha enche o papo."),
            ExerciseItem(prompt: "A cavalo dado não se olha os ___.", options: ["Dentes", "Cascos", "Olhos", "Pelos"], correctAnswer: "Dentes", explanation: "O ditado popular é: A cavalo dado não se olha os dentes."),
            ExerciseItem(prompt: "Quem não tem cão, caça com ___.", options: ["Gato", "Rato", "Lobo", "Pássaro"], correctAnswer: "Gato", explanation: "O ditado popular é: Quem não tem cão, caça com gato."),
            ExerciseItem(prompt: "Mais vale um pássaro na mão do que dois ___.", options: ["Voando", "Cantando", "Comendo", "Dormindo"], correctAnswer: "Voando", explanation: "O ditado popular é: Mais vale um pássaro na mão do que dois voando."),
            ExerciseItem(prompt: "Água mole em pedra dura, tanto bate até que ___.", options: ["Fura", "Quebra", "Racha", "Seca"], correctAnswer: "Fura", explanation: "O ditado popular é: Água mole em pedra dura, tanto bate até que fura."),
            ExerciseItem(prompt: "Quem semeia vento, colhe ___.", options: ["Tempestade", "Chuva", "Sol", "Trigo"], correctAnswer: "Tempestade", explanation: "O ditado popular é: Quem semeia vento, colhe tempestade."),
            ExerciseItem(prompt: "Não há rosa sem ___.", options: ["Espinhos", "Pétalas", "Folhas", "Perfume"], correctAnswer: "Espinhos", explanation: "O ditado popular é: Não há rosa sem espinhos."),
            ExerciseItem(prompt: "Onde há fumaça, há ___.", options: ["Fogo", "Cinza", "Calor", "Chuva"], correctAnswer: "Fogo", explanation: "O ditado popular é: Onde há fumaça, há fogo."),
            ExerciseItem(prompt: "Cada macaco no seu ___.", options: ["Galho", "Cesto", "Ninho", "Lugar"], correctAnswer: "Galho", explanation: "O ditado popular é: Cada macaco no seu galho."),
            ExerciseItem(prompt: "A pressa é inimiga da ___.", options: ["Perfeição", "Velocidade", "Preguiça", "Fome"], correctAnswer: "Perfeição", explanation: "O ditado popular é: A pressa é inimiga da perfeição."),
            ExerciseItem(prompt: "Mentira tem perna ___.", options: ["Curta", "Longa", "Fina", "Torta"], correctAnswer: "Curta", explanation: "O ditado popular é: Mentira tem perna curta."),
            ExerciseItem(prompt: "Quem com ferro fere, com ferro será ___.", options: ["Ferido", "Curado", "Salvo", "Morto"], correctAnswer: "Ferido", explanation: "O ditado popular é: Quem com ferro fere, com ferro será ferido.")
        ]
    )

    // MARK: - Exercise 4: Compound Words
    private static let exercise4 = Exercise(
        title: "Palavras Compostas",
        instructions: "Escolha a palavra correta para completar a palavra composta.",
        section: .language,
        type: .multipleChoice,
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
            ExerciseItem(prompt: "GUARDA + ___", options: ["Roupa", "Mesa", "Cadeira", "Porta"], correctAnswer: "Roupa", explanation: "Guarda + Roupa = Guarda-roupa."),
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
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "O que Maria deixou em casa?", options: ["A carteira", "As chaves", "A lista de compras", "O telefone"], correctAnswer: "A carteira", explanation: "A história afirma que ela esqueceu a carteira no balcão da cozinha.", passage: "Maria foi ao supermercado comprar leite e pão. Ela esqueceu a carteira no balcão da cozinha."),
            ExerciseItem(prompt: "Que tipo de peixe Tomás pescou?", options: ["Uma truta", "Um salmão", "Um robalo", "Um bagre"], correctAnswer: "Uma truta", explanation: "A história afirma que ele pegou uma truta.", passage: "Tomás acordou cedo no sábado para pescar. Ele pegou uma truta grande, mas teve que devolvê-la porque era muito pequena."),
            ExerciseItem(prompt: "Qual é a cor do carro de Arthur?", options: ["Azul", "Amarelo", "Vermelho", "Verde"], correctAnswer: "Azul", explanation: "A história afirma que Arthur estacionou seu carro azul.", passage: "Arthur estacionou seu carro azul sob a sombra de uma grande árvore. Quando voltou, viu que o carro estava coberto de folhas amarelas."),
            ExerciseItem(prompt: "Quantas velas Linda colocou no bolo?", options: ["Dez", "Cinco", "Oito", "Doze"], correctAnswer: "Dez", explanation: "A história afirma que ela colocou dez velas vermelhas no bolo.", passage: "Linda assou um bolo de chocolate para a festa de aniversário de sua filha. Ela colocou dez velas vermelhas no bolo."),
            ExerciseItem(prompt: "Onde mora o irmão de Roberto?", options: ["Chicago", "Nova York", "Boston", "Miami"], correctAnswer: "Chicago", explanation: "A história afirma que ele enviou um pacote para seu irmão em Chicago.", passage: "Roberto foi aos correios enviar um pacote para seu irmão em Chicago. O atendente disse que chegaria na terça-feira."),
            ExerciseItem(prompt: "Qual é a cor dos novos tênis de corrida de Sarah?", options: ["Verde brilhante", "Azul", "Vermelho", "Preto"], correctAnswer: "Verde brilhante", explanation: "A história diz que os tênis são verdes brilhantes com listras brancas.", passage: "Sarah comprou um novo par de tênis de corrida ontem. Eles são verdes brilhantes com listras brancas."),
            ExerciseItem(prompt: "Qual era a cor do guarda-chuva que Tiago usou?", options: ["Amarelo", "Vermelho", "Azul", "Preto"], correctAnswer: "Amarelo", explanation: "A história diz que ele abriu seu guarda-chuva amarelo.", passage: "Tiago estava caminhando no parque quando começou a chover. Ele abriu seu guarda-chuva amarelo para se manter seco."),
            ExerciseItem(prompt: "Em qual dia a padaria estava fechada?", options: ["Segunda-feira", "Terça-feira", "Quarta-feira", "Domingo"], correctAnswer: "Segunda-feira", explanation: "A história diz que a padaria estava fechada na segunda-feira.", passage: "A padaria local fechou na segunda-feira para reformas. Eles planejavam reabrir na terça-feira de manhã às seis horas."),
            ExerciseItem(prompt: "Por que Ana ligou para um encanador?", options: ["A pia estava vazando", "O fogão estava quebrado", "A luz acabou", "A porta estava trancada"], correctAnswer: "A pia estava vazando", explanation: "A história diz que ela ligou para um encanador porque a pia da cozinha estava vazando.", passage: "Ana ligou para um encanador porque a pia da cozinha estava vazando. O encanador chegou em uma hora e consertou o cano."),
            ExerciseItem(prompt: "Qual é o nome do cachorro de David?", options: ["Max", "Buddy", "Charlie", "Rocky"], correctAnswer: "Max", explanation: "A história afirma que David passeou com seu cachorro, Max.", passage: "David passeou com seu cachorro, Max, pelo quarteirão. Max viu um esquilo e latiu alto para ele."),
            ExerciseItem(prompt: "Qual ingrediente Helena acabou não tendo?", options: ["Cenouras", "Batatas", "Cebolas", "Aipo"], correctAnswer: "Cenouras", explanation: "A história afirma que ela percebeu que estava sem cenouras.", passage: "Helena estava fazendo sopa de legumes para o jantar. Ela percebeu que estava sem cenouras, então usou batatas no lugar."),
            ExerciseItem(prompt: "Quanto custou o almoço de Pedro?", options: ["Quinze reais", "Dez reais", "Vinte reais", "Doze reais"], correctAnswer: "Quinze reais", explanation: "A história afirma que o custo total foi de quinze reais.", passage: "Pedro pediu uma pizza de calabresa e uma garrafa de refrigerante para o almoço. O custo total foi de quinze reais."),
            ExerciseItem(prompt: "Qual era o assunto do livro que Alice pegou emprestado?", options: ["Jardinagem", "História", "Culinária", "Viagem"], correctAnswer: "Jardinagem", explanation: "A história afirma que ela pegou emprestado um livro sobre jardinagem.", passage: "Alice foi à biblioteca para pegar emprestado um livro sobre jardinagem. Ela também pegou um DVD sobre história."),
            ExerciseItem(prompt: "Por que o trem atrasou?", options: ["Manutenção nos trilhos", "Uma tempestade forte", "Falta de energia", "Ausência de um tripulante"], correctAnswer: "Manutenção nos trilhos", explanation: "A história afirma que o trem atrasou devido à manutenção nos trilhos.", passage: "Jorge pegou um trem matinal para a cidade para uma entrevista de emprego. Seu trem atrasou quinze minutos devido à manutenção nos trilhos."),
            ExerciseItem(prompt: "Qual flor Nancy acabou comprando?", options: ["Cravos rosa", "Rosas vermelhas", "Tulipas amarelas", "Lírios brancos"], correctAnswer: "Cravos rosa", explanation: "A história afirma que ela comprou cravos rosa no lugar.", passage: "Nancy foi à floricultura comprar rosas vermelhas. Elas estavam esgotadas, então ela comprou cravos rosa.")
        ]
    )

    // MARK: - Exercise 7: Number Sequences
    private static let exercise7 = Exercise(
        title: "Sequências Numéricas",
        instructions: "Qual número vem a seguir na sequência?",
        section: .cognition,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "2, 4, 6, 8, ___", options: ["9", "10", "11", "12"], correctAnswer: "10", explanation: "A sequência aumenta adicionando 2 a cada vez."),
            ExerciseItem(prompt: "5, 10, 15, 20, ___", options: ["21", "22", "25", "30"], correctAnswer: "25", explanation: "A sequência aumenta adicionando 5 a cada vez."),
            ExerciseItem(prompt: "10, 20, 30, 40, ___", options: ["45", "50", "60", "70"], correctAnswer: "50", explanation: "A sequência aumenta adicionando 10 a cada vez."),
            ExerciseItem(prompt: "3, 6, 9, 12, ___", options: ["13", "14", "15", "16"], correctAnswer: "15", explanation: "A sequência aumenta adicionando 3 a cada vez."),
            ExerciseItem(prompt: "9, 8, 7, 6, ___", options: ["4", "5", "7", "8"], correctAnswer: "5", explanation: "A sequência diminui subtraindo 1 a cada vez."),
            ExerciseItem(prompt: "20, 18, 16, 14, ___", options: ["12", "13", "10", "15"], correctAnswer: "12", explanation: "A sequência diminui subtraindo 2 a cada vez."),
            ExerciseItem(prompt: "1, 3, 5, 7, ___", options: ["8", "9", "10", "11"], correctAnswer: "9", explanation: "A sequência de números ímpares aumenta adicionando 2 a cada vez."),
            ExerciseItem(prompt: "4, 8, 12, 16, ___", options: ["18", "20", "22", "24"], correctAnswer: "20", explanation: "A sequência aumenta adicionando 4 a cada vez."),
            ExerciseItem(prompt: "50, 45, 40, 35, ___", options: ["25", "28", "30", "32"], correctAnswer: "30", explanation: "A sequência diminui subtraindo 5 a cada vez."),
            ExerciseItem(prompt: "100, 90, 80, 70, ___", options: ["50", "60", "65", "75"], correctAnswer: "60", explanation: "A sequência diminui subtraindo 10 a cada vez."),
            ExerciseItem(prompt: "11, 22, 33, 44, ___", options: ["50", "53", "55", "66"], correctAnswer: "55", explanation: "A sequência aumenta adicionando 11 a cada vez."),
            ExerciseItem(prompt: "8, 10, 12, 14, ___", options: ["15", "16", "17", "18"], correctAnswer: "16", explanation: "A sequência aumenta adicionando 2 a cada vez."),
            ExerciseItem(prompt: "12, 15, 18, 21, ___", options: ["22", "23", "24", "25"], correctAnswer: "24", explanation: "A sequência aumenta adicionando 3 a cada vez."),
            ExerciseItem(prompt: "30, 27, 24, 21, ___", options: ["18", "19", "20", "17"], correctAnswer: "18", explanation: "A sequência diminui subtraindo 3 a cada vez."),
            ExerciseItem(prompt: "7, 14, 21, 28, ___", options: ["30", "32", "35", "42"], correctAnswer: "35", explanation: "A sequência aumenta adicionando 7 a cada vez."),
            ExerciseItem(prompt: "40, 36, 32, 28, ___", options: ["20", "24", "26", "27"], correctAnswer: "24", explanation: "A sequência diminui subtraindo 4 a cada vez."),
            ExerciseItem(prompt: "6, 12, 18, 24, ___", options: ["26", "28", "30", "32"], correctAnswer: "30", explanation: "A sequência aumenta adicionando 6 a cada vez."),
            ExerciseItem(prompt: "15, 20, 25, 30, ___", options: ["31", "32", "35", "40"], correctAnswer: "35", explanation: "A sequência aumenta adicionando 5 a cada vez."),
            ExerciseItem(prompt: "90, 80, 70, 60, ___", options: ["40", "50", "55", "45"], correctAnswer: "50", explanation: "A sequência diminui subtraindo 10 a cada vez."),
            ExerciseItem(prompt: "13, 15, 17, 19, ___", options: ["20", "21", "22", "23"], correctAnswer: "21", explanation: "A sequência aumenta adicionando 2 a cada vez.")
        ]
    )

    // MARK: - Exercise 8: Cause and Effect
    private static let exercise8 = Exercise(
        title: "Causa e Efeito",
        instructions: "Escolha o resultado mais provável da situação descrita.",
        section: .cognition,
        type: .multipleChoice,
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
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Rótulo: Tomar 1 comprimido duas vezes ao dia com alimentos. Quantos comprimidos você deve tomar no total a cada dia?", options: ["1", "2", "3", "4"], correctAnswer: "2", explanation: "Tomar 1 comprimido duas vezes ao dia significa 1 + 1 = 2 comprimidos."),
            ExerciseItem(prompt: "Rótulo: Tomar 2 comprimidos ao deitar. Quando você deve tomar este medicamento?", options: ["De manhã", "Com o almoço", "Ao deitar", "Antes do exercício"], correctAnswer: "Ao deitar", explanation: "O rótulo indica explicitamente para tomar ao deitar."),
            ExerciseItem(prompt: "Rótulo: Tomar 1 cápsula a cada 8 horas conforme necessário para a dor. Quantas vezes você pode tomar isso em um dia de 24 horas?", options: ["2 vezes", "3 vezes", "4 vezes", "6 vezes"], correctAnswer: "3 vezes", explanation: "Um dia tem 24 horas. 24 dividido por 8 é igual a 3 vezes."),
            ExerciseItem(prompt: "Rótulo: Amoxicilina 250mg. Tomar 1 comprimido três vezes ao dia. Manter refrigerado. Como você deve guardar este medicamento?", options: ["No freezer", "Na geladeira", "Em um armário quente", "Sob luz solar direta"], correctAnswer: "Na geladeira", explanation: "O rótulo diz “Manter refrigerado”, o que significa guardar na geladeira."),
            ExerciseItem(prompt: "Rótulo: Não consumir bebidas alcoólicas enquanto estiver tomando este medicamento. Pode causar sonolência. Qual é o efeito colateral alertado deste medicamento?", options: ["Sonolência", "Aumento de energia", "Pressão alta", "Espirros"], correctAnswer: "Sonolência", explanation: "O rótulo avisa que o medicamento “Pode causar sonolência”."),
            ExerciseItem(prompt: "Rótulo: Tomar 1 comprimido diariamente pela manhã em jejum. Quando você deve tomar o café da manhã?", options: ["Antes de tomar o comprimido", "Depois de tomar o comprimido", "Enquanto toma o comprimido", "Não deve tomar café da manhã"], correctAnswer: "Depois de tomar o comprimido", explanation: "Tomar em jejum significa tomar o remédio antes de tomar o café da manhã."),
            ExerciseItem(prompt: "Rótulo: Tomar 1 comprimido por via oral todos os dias. Qtd: 30. Retiradas autorizadas: 2. Quantas retiradas adicionais são permitidas?", options: ["1", "2", "3", "30"], correctAnswer: "2", explanation: "O rótulo lista “Retiradas autorizadas: 2”."),
            ExerciseItem(prompt: "Rótulo: Aplicar uma camada fina na área da pele afetada duas vezes ao dia. Não engolir. Como este medicamento é aplicado?", options: ["Engolindo-o", "Passando na pele", "Espirrando no nariz", "Dissolvendo em água"], correctAnswer: "Passando na pele", explanation: "O rótulo diz “Aplicar uma camada fina na área da pele afetada”."),
            ExerciseItem(prompt: "Rótulo: Descartar após 15/10/2026. Hoje é 01/11/2026. Você pode tomar este medicamento com segurança?", options: ["Sim", "Não", "Apenas com comida", "Apenas à noite"], correctAnswer: "Não", explanation: "O medicamento venceu em 15/10/2026, data anterior a hoje."),
            ExerciseItem(prompt: "Rótulo: Tomar 1 comprimido duas vezes ao dia. Não tomar com laticínios. Qual bebida você deve evitar ao tomar este comprimido?", options: ["Água", "Leite", "Suco de maçã", "Café preto"], correctAnswer: "Leite", explanation: "O leite é um produto laticínio e deve ser evitado de acordo com o rótulo."),
            ExerciseItem(prompt: "Rótulo: Tomar 2 comprimidos 1 hora antes do voo. Por que você tomaria este medicamento?", options: ["Para evitar enjoo de movimento durante a viagem", "Para dormir melhor em casa", "Para curar dor de cabeça", "Para tratar irritação na pele"], correctAnswer: "Para evitar enjoo de movimento durante a viagem", explanation: "Tomar medicamento antes de um voo geralmente serve para prevenir enjoo de movimento."),
            ExerciseItem(prompt: "Rótulo: Colírio. Pingar 1 gota em cada olho duas vezes ao dia. Onde você deve colocar este medicamento?", options: ["Na boca", "Nos ouvidos", "Nos olhos", "Na pele"], correctAnswer: "Nos olhos", explanation: "O rótulo diz “Colírio” e “pingar em cada olho”."),
            ExerciseItem(prompt: "Rótulo: Tomar 1 comprimido a cada 4 a 6 horas conforme necessário para dor de cabeça. Máximo de 4 comprimidos por dia. Qual é o máximo de comprimidos que você pode tomar em um dia?", options: ["1", "2", "4", "6"], correctAnswer: "4", explanation: "O rótulo especifica “Máximo de 4 comprimidos por dia”."),
            ExerciseItem(prompt: "Rótulo: Tomar com um copo cheio de água. Por que você precisa de água com este comprimido?", options: ["Para dissolvê-lo na pele", "Para ajudar a engolir e evitar irritação no estômago", "Para mudar sua cor", "Para ter um gosto melhor"], correctAnswer: "Para ajudar a engolir e evitar irritação no estômago", explanation: "Um copo cheio de água ajuda a engolir o comprimido com segurança e protege o estômago."),
            ExerciseItem(prompt: "Rótulo: Tomar 1 comprimido diariamente com sua refeição noturna. Qual é o melhor momento para tomar isso?", options: ["No café da manhã", "No almoço", "No jantar", "No meio da noite"], correctAnswer: "No jantar", explanation: "A refeição noturna é o jantar.")
        ]
    )

    // MARK: - Exercise 12: Reading a Menu
    private static let exercise12 = Exercise(
        title: "Leitura de Cardápio",
        instructions: "Use as informações do cardápio para responder à pergunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Cardápio: X-Burger R$8,00, Batata Frita R$3,00, Refrigerante R$2,00. Quanto custa um X-Burger?", options: ["R$8,00", "R$3,00", "R$2,00", "R$11,00"], correctAnswer: "R$8,00", explanation: "O cardápio indica que o X-Burger custa R$8,00."),
            ExerciseItem(prompt: "Cardápio: Café R$2,50, Chá R$2,00, Muffin R$3,00. Qual item é o mais barato?", options: ["Café", "Chá", "Muffin", "Eles custam o mesmo valor"], correctAnswer: "Chá", explanation: "R$2,00 é o menor preço."),
            ExerciseItem(prompt: "Cardápio: Sopa de Tomate R$5,00, Salada Verde R$6,00, Caesar de Frango R$9,00. Quanto custa uma tigela de Sopa de Tomate?", options: ["R$5,00", "R$6,00", "R$9,00", "R$14,00"], correctAnswer: "R$5,00", explanation: "A Sopa de Tomate está listada como R$5,00."),
            ExerciseItem(prompt: "Cardápio: Café da Manhã com Panquecas R$10,00, Rabanada R$9,00, Porção de Bacon R$4,00. Qual é o custo da Rabanada?", options: ["R$10,00", "R$9,00", "R$4,00", "R$13,00"], correctAnswer: "R$9,00", explanation: "A rabanada está listada como R$9,00."),
            ExerciseItem(prompt: "Cardápio: Fatia de Pizza de Queijo R$4,00, Fatia de Pizza de Calabresa R$4,50. Quanto a fatia de Calabresa custa a mais que a de Queijo?", options: ["R$0,50", "R$1,00", "R$4,50", "R$8,50"], correctAnswer: "R$0,50", explanation: "R$4,50 menos R$4,00 é igual a R$0,50."),
            ExerciseItem(prompt: "Cardápio: Sanduíche de Frango R$7,00, Peixe com Batatas R$11,00. Você tem R$10,00. Qual refeição você pode pagar?", options: ["Sanduíche de Frango", "Peixe com Batatas", "Ambas as refeições", "Nenhuma das refeições"], correctAnswer: "Sanduíche de Frango", explanation: "R$7,00 é menor que R$10,00, mas R$11,00 é maior."),
            ExerciseItem(prompt: "Cardápio: Prato Infantil (menores de 12 anos) R$6,00, Hambúrguer Adulto R$12,00. Quanto custa a refeição para uma criança de 8 anos?", options: ["R$6,00", "R$12,00", "R$8,00", "R$18,00"], correctAnswer: "R$6,00", explanation: "Uma criança de 8 anos tem menos de 12, então aplica-se o preço infantil de R$6,00."),
            ExerciseItem(prompt: "Cardápio: Sorvete de Chocolate R$4,00, Torta de Maçã R$5,00, Adicionar Sorvete de Creme à Torta R$1,50. Quanto custa a Torta de Maçã com Sorvete de Creme?", options: ["R$5,00", "R$6,50", "R$9,00", "R$4,00"], correctAnswer: "R$6,50", explanation: "R$5,00 (torta) + R$1,50 (sorvete) = R$6,50."),
            ExerciseItem(prompt: "Cardápio: Wrap de Peru R$8,50, Batata Chips R$1,50, Suco R$2,00. Qual é o custo total de um Wrap de Peru e um Suco?", options: ["R$8,50", "R$10,00", "R$10,50", "R$12,00"], correctAnswer: "R$10,50", explanation: "R$8,50 + R$2,00 = R$10,50."),
            ExerciseItem(prompt: "Cardápio: Prato do Dia (servido das 11h às 15h) R$9,00. Cardápio de Jantar Regular R$15,00. São 13h. Quanto custa o Prato do Dia?", options: ["R$9,00", "R$15,00", "R$11,00", "R$3,00"], correctAnswer: "R$9,00", explanation: "13h está entre as 11h e as 15h, então o preço do Prato do Dia de R$9,00 está ativo."),
            ExerciseItem(prompt: "Cardápio: Café R$2,00 (Refil Grátis), Chá Quente R$2,50. Se você beber três xícaras de café, quanto pagará no total?", options: ["R$2,00", "R$6,00", "R$2,50", "R$7,50"], correctAnswer: "R$2,00", explanation: "O café tem refil grátis, então você só paga o valor inicial de R$2,00."),
            ExerciseItem(prompt: "Cardápio: Sopa de Legumes R$4,00, Ensopado de Carne R$7,00. Qual prato contém carne?", options: ["Sopa de Legumes", "Ensopado de Carne", "Ambos", "Nenhum"], correctAnswer: "Ensopado de Carne", explanation: "Carne é um ingrediente animal; legumes não são."),
            ExerciseItem(prompt: "Cardápio: Taco R$3,00, Quesadilla R$6,00, Refrigerante R$2,00. Qual é o custo de uma Quesadilla?", options: ["R$3,00", "R$6,00", "R$2,00", "R$8,00"], correctAnswer: "R$6,00", explanation: "O cardápio lista a Quesadilla por R$6,00."),
            ExerciseItem(prompt: "Cardápio: Espaguete R$12,00, Lasanha R$14,00, Pão de Alho R$3,00. Quanto custa uma porção de Pão de Alho?", options: ["R$12,00", "R$14,00", "R$3,00", "R$15,00"], correctAnswer: "R$3,00", explanation: "O Pão de Alho está listado como R$3,00."),
            ExerciseItem(prompt: "Cardápio: Ovos Benedict R$11,00, Aveia R$6,00, Tigela de Frutas R$5,00. Qual item de café da manhã é o mais caro?", options: ["Ovos Benedict", "Aveia", "Tigela de Frutas", "Eles têm o mesmo preço"], correctAnswer: "Ovos Benedict", explanation: "R$11,00 é o maior preço da lista.")
        ]
    )

    // MARK: - Exercise 13: Understanding Bills
    private static let exercise13 = Exercise(
        title: "Compreensão de Contas",
        instructions: "Leia as informações da conta e responda à pergunta.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Conta de Luz: Total a Pagar: R$45,00. Data de Vencimento: 15 de julho. Qual é o valor que você precisa pagar?", options: ["R$15,00", "R$45,00", "15 de julho", "Grátis"], correctAnswer: "R$45,00", explanation: "O total devido é R$45,00."),
            ExerciseItem(prompt: "Conta de Água: Data de Vencimento: 10 de out. Taxa de Atraso: R$5,00. Hoje é 12 de out. O que acontece se você pagar hoje?", options: ["Você paga o valor normal", "Você paga uma taxa de atraso de R$5,00", "Você ganha um desconto", "Nada"], correctAnswer: "Você paga uma taxa de atraso de R$5,00", explanation: "Como hoje é depois da data de vencimento, a taxa de atraso é aplicada."),
            ExerciseItem(prompt: "Conta de Internet: Mensalidade: R$60,00. Desconto de Débito Automático: -R$5,00. Qual é o preço final com Débito Automático?", options: ["R$60,00", "R$65,00", "R$55,00", "R$5,00"], correctAnswer: "R$55,00", explanation: "R$60,00 menos R$5,00 é igual a R$55,00."),
            ExerciseItem(prompt: "Conta de Gás: Cobranças Atuais: R$30,00. Saldo Não Pago: R$10,00. Saldo Total: R$40,00. Quanto valor não pago foi acumulado do mês anterior?", options: ["R$30,00", "R$10,00", "R$40,00", "R$0,00"], correctAnswer: "R$10,00", explanation: "O “Saldo Não Pago” representa o valor acumulado do mês passado, que é R$10,00."),
            ExerciseItem(prompt: "Conta de Celular: Data de Vencimento: 20 de junho. Data Atual: 15 de junho. Quantos dias você tem para pagar essa conta no prazo?", options: ["5 dias", "20 dias", "15 dias", "1 dia"], correctAnswer: "5 dias", explanation: "20 de junho menos 15 de junho são 5 dias."),
            ExerciseItem(prompt: "Conta de Lixo: Cobrança Trimestral (3 meses): R$36,00. Qual é o custo equivalente por mês?", options: ["R$36,00", "R$12,00", "R$18,00", "R$6,00"], correctAnswer: "R$12,00", explanation: "R$36,00 divididos por 3 meses é igual a R$12,00 por mês."),
            ExerciseItem(prompt: "Conta de TV a Cabo: Total a Pagar: R$80,00. Beneficiário: “XYZ Cabo S.A.” Para quem deve ser feito o pagamento?", options: ["R$80,00", "XYZ Cabo S.A.", "O Instalador", "Dinheiro"], correctAnswer: "XYZ Cabo S.A.", explanation: "A conta especifica fazer os pagamentos para “XYZ Cabo S.A.”."),
            ExerciseItem(prompt: "Conta de Serviços Públicos: Água: R$20,00, Gás: R$30,00, Luz: R$50,00. Total: R$100,00. Qual serviço custou mais caro?", options: ["Água", "Gás", "Luz", "Eles custaram o mesmo valor"], correctAnswer: "Luz", explanation: "A conta de luz é de R$50,00, que é o maior valor."),
            ExerciseItem(prompt: "Seguro de Carro: Prêmio Semestral: R$600,00. Com que frequência você paga esta conta?", options: ["Todo mês", "A cada 6 meses (duas vezes por ano)", "Uma vez por ano", "Toda semana"], correctAnswer: "A cada 6 meses (duas vezes por ano)", explanation: "Semestral significa duas vezes por ano, ou a cada 6 meses."),
            ExerciseItem(prompt: "Serviço de Streaming: Status da Conta: SUSPENSO. Saldo Devedor: R$15,00. Por que o serviço não está funcionando?", options: ["A internet caiu", "A TV está quebrada", "A conta está suspensa devido ao saldo não pago", "O vídeo está carregando"], correctAnswer: "A conta está suspensa devido ao saldo não pago", explanation: "A fatura indica que o status da conta está suspenso."),
            ExerciseItem(prompt: "Mensalidade da Academia: Taxa Anual: R$120,00. Taxa Mensal: R$10,00. Quanto custa a taxa anual?", options: ["R$10,00", "R$120,00", "R$130,00", "R$12,00"], correctAnswer: "R$120,00", explanation: "A taxa anual é de R$120,00."),
            ExerciseItem(prompt: "Conta de Energia: Janeiro: R$110,00. Julho: R$20,00. Por que a conta de luz é mais alta em janeiro no Brasil?", options: ["A eletricidade é mais barata no inverno", "Usa-se mais ar-condicionado no mês de verão de janeiro", "A casa fica vazia em janeiro", "O relógio mudou"], correctAnswer: "Usa-se mais ar-condicionado no mês de verão de janeiro", explanation: "O verão no Brasil ocorre em janeiro, o que exige mais uso de ar-condicionado, aumentando o consumo de energia."),
            ExerciseItem(prompt: "Fatura de Cartão de Crédito: Pagamento Mínimo: R$25,00. Saldo Total: R$500,00. Qual é o menor valor que você pode pagar este mês para evitar multas por atraso?", options: ["R$25,00", "R$500,00", "R$0,00", "R$475,00"], correctAnswer: "R$25,00", explanation: "O “Pagamento Mínimo” de R$25,00 é o menor valor aceitável."),
            ExerciseItem(prompt: "Conta Médica: Valor Total: R$150,00. Coberto pelo Seguro: R$120,00. Responsabilidade do Paciente: R$30,00. Quanto você deve?", options: ["R$150,00", "R$120,00", "R$30,00", "R$0,00"], correctAnswer: "R$30,00", explanation: "A responsabilidade do paciente é o valor que o paciente deve, que é de R$30,00."),
            ExerciseItem(prompt: "Assinatura de Jornal: Próxima Data de Renovação: 31 de dez de 2026. Se você quiser cancelar antes da renovação, quando deve ligar?", options: ["Antes de 31 de dez de 2026", "Depois de 31 de dez de 2026", "Em janeiro de 2027", "Nunca"], correctAnswer: "Antes de 31 de dez de 2026", explanation: "Cancelar antes da data de renovação evita a cobrança do próximo ciclo.")
        ]
    )

    // MARK: - Exercise 14: What Would You Do?
    private static let exercise14 = Exercise(
        title: "O Que Você Faria?",
        instructions: "Escolha a melhor resposta para a situação descrita.",
        section: .functionalSkills,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "Você sente cheiro de fumaça na cozinha, mas não vê fogo. O que deve fazer primeiro?", options: ["Ignorar", "Abrir as janelas e verificar o fogão", "Ligar para um amigo para conversar", "Voltar a dormir"], correctAnswer: "Abrir as janelas e verificar o fogão", explanation: "Verificar o fogão é o primeiro passo para identificar e resolver com segurança pequenos problemas comuns com fumaça."),
            ExerciseItem(prompt: "Você está no supermercado e percebe que esqueceu a carteira em casa. Qual é a melhor opção?", options: ["Levar as compras sem pagar", "Pedir ao caixa para guardar o carrinho e ir buscar a carteira em casa", "Sair da loja chorando", "Discutir com o gerente"], correctAnswer: "Pedir ao caixa para guardar o carrinho e ir buscar a carteira em casa", explanation: "Pedir para guardar os itens enquanto busca a carteira é a atitude padrão e educada."),
            ExerciseItem(prompt: "Você deixa cair um ovo cru no chão da cozinha e ele se quebra. O que deve fazer?", options: ["Deixar lá até amanhã", "Limpar imediatamente com papel-toalha e sabão", "Cobrir com um tapete", "Deixar o gato comer"], correctAnswer: "Limpar imediatamente com papel-toalha e sabão", explanation: "Ovos crus são escorregadios e atraem bactérias, devendo ser limpos rapidamente."),
            ExerciseItem(prompt: "Um amigo lhe conta que o cachorro dele faleceu ontem. O que você deve dizer?", options: ["Que engraçado", "Sinto muito pela sua perda", "Você deveria comprar um gato no lugar", "Posso ficar com os brinquedos dele?"], correctAnswer: "Sinto muito pela sua perda", explanation: "Oferecer condolências é a resposta empática à dor de alguém."),
            ExerciseItem(prompt: "Você recebe uma ligação de um número desconhecido alegando que você ganhou na loteria e pedindo seus dados bancários. O que você deve fazer?", options: ["Passar seus dados imediatamente", "Desligar e não compartilhar nenhum dado pessoal", "Pedir para ligarem mais tarde", "Ligar para a família para comemorar"], correctAnswer: "Desligar e não compartilhar nenhum dado pessoal", explanation: "Solicitações de dados bancários por números desconhecidos são golpes comuns."),
            ExerciseItem(prompt: "Você se sente tonto e com a cabeça leve ao ficar de pé em uma sala abafada. O que você deve fazer?", options: ["Continuar de pé e fechar os olhos", "Sentar-se imediatamente e beber um pouco de água", "Correr para o banheiro", "Girar no lugar"], correctAnswer: "Sentar-se imediatamente e beber um pouco de água", explanation: "Sentar-se evita quedas e a água ajuda a recuperar da desidratação."),
            ExerciseItem(prompt: "Você vê água vazando por baixo da pia da cozinha. Qual é a primeira coisa que deve fazer?", options: ["Ligar para um pintor", "Colocar um balde sob o vazamento para conter a água", "Passar pano no chão mais tarde", "Apagar as luzes"], correctAnswer: "Colocar um balde sob o vazamento para conter a água", explanation: "O balde evita danos imediatos causados pela água enquanto você busca conserto."),
            ExerciseItem(prompt: "Você é convidado para um jantar, mas não pode ir. O que você deve fazer?", options: ["Apenas não aparecer", "Avisar o anfitrião com antecedência que não poderá comparecer", "Chegar atrasado sem avisar", "Enviar um presente em vez de responder"], correctAnswer: "Avisar o anfitrião com antecedência que não poderá comparecer", explanation: "Informar o anfitrião com antecedência é educado e permite que ele ajuste os planos."),
            ExerciseItem(prompt: "Você acidentalmente quebra um vaso decorativo na casa de um amigo. Qual é a resposta correta?", options: ["Esconder os pedaços embaixo do sofá", "Pedir desculpas e se oferecer para substituí-lo", "Fingir que não foi você", "Culpar o cachorro"], correctAnswer: "Pedir desculpas e se oferecer para substituí-lo", explanation: "A honestidade e a oferta de reparar o dano são comportamentos educados e responsáveis."),
            ExerciseItem(prompt: "Você não consegue encontrar as chaves de casa e está trancado do lado de fora. Qual é o melhor passo?", options: ["Quebrar uma janela para entrar", "Ligar para um familiar com uma chave reserva ou para um chaveiro", "Esperar na varanda para sempre", "Chutar a porta"], correctAnswer: "Ligar para um familiar com uma chave reserva ou para um chaveiro", explanation: "Conseguir uma chave reserva ou chamar um profissional é a maneira mais segura de entrar."),
            ExerciseItem(prompt: "Você nota que os postes de luz da rua estão acesos, mas a sua casa está sem energia elétrica. O que você deve fazer?", options: ["Verificar a caixa de disjuntores", "Comprar uma televisão nova", "Ir para a cama imediatamente", "Ligar para a polícia"], correctAnswer: "Verificar a caixa de disjuntores", explanation: "Verificar os disjuntores ajuda a determinar se o problema é local ou uma queda geral."),
            ExerciseItem(prompt: "Você vê um vizinho idoso com dificuldades para carregar sacolas de compras pesadas. O que você deve fazer?", options: ["Passar por ele rapidamente", "Oferecer ajuda para carregar as sacolas", "Tirar uma foto dele", "Dizer para ele andar mais rápido"], correctAnswer: "Oferecer ajuda para carregar as sacolas", explanation: "Oferecer ajuda demonstra apoio comunitário e gentileza."),
            ExerciseItem(prompt: "Você dá um gole no café e percebe que está quente demais, queimando sua boca. O que você deve fazer?", options: ["Beber o resto rapidamente", "Cuspir com cuidado e beber água gelada", "Gritar bem alto", "Jogar a xícara"], correctAnswer: "Cuspir com cuidado e beber água gelada", explanation: "A água gelada resfria a queimadura e alivia o desconforto."),
            ExerciseItem(prompt: "Seu médico receita um novo remédio, mas você não entende como tomá-lo. O que você deve fazer?", options: ["Adivinhar a dosagem", "Pedir ao farmacêutico ou ao médico para explicar para você", "Não tomar o remédio", "Pesquisar nas redes sociais"], correctAnswer: "Pedir ao farmacêutico ou ao médico para explicar para você", explanation: "Profissionais de saúde são as únicas fontes confiáveis de instruções de receitas."),
            ExerciseItem(prompt: "Você acidentalmente derrama vinho tinto no tapete branco de um amigo. O que você deve fazer?", options: ["Colocar uma cadeira sobre a mancha", "Pedir desculpas e ajudar a limpar imediatamente", "Sair da festa mais cedo", "Dizer que era suco de uva"], correctAnswer: "Pedir desculpas e ajudar a limpar imediatamente", explanation: "Limpar derramamentos imediatamente evita manchas permanentes."),
            ExerciseItem(prompt: "Você ouve o alarme de fumaça apitar com um bipe curto a cada minuto. O que isso significa?", options: ["Há um incêndio", "A bateria está fraca e precisa ser substituída", "O alarme está quebrado", "Nada"], correctAnswer: "A bateria está fraca e precisa ser substituída", explanation: "Bipes curtos e isolados indicam que a bateria reserva está fraca."),
            ExerciseItem(prompt: "Você está dirigindo e vê um veículo de emergência com luzes piscantes atrás de você. O que você deve fazer?", options: ["Acelerar para ficar à frente dele", "Encostar na lateral da pista e parar com segurança", "Parar imediatamente no meio da faixa", "Ignorar"], correctAnswer: "Encostar na lateral da pista e parar com segurança", explanation: "Encostar abre caminho para a passagem rápida dos socorristas."),
            ExerciseItem(prompt: "Você recebe um e-mail do seu banco pedindo para clicar em um link para verificar sua senha. O que você deve fazer?", options: ["Clicar no link e digitar sua senha", "Excluir o e-mail ou entrar em contato com o banco pelo canal oficial", "Encaminhar para seus amigos", "Responder com a sua senha"], correctAnswer: "Excluir o e-mail ou entrar em contato com o banco pelo canal oficial", explanation: "Bancos não pedem senhas por links de e-mail; trata-se de um golpe de phishing."),
            ExerciseItem(prompt: "Você encontra uma carteira na calçada contendo dinheiro e um documento de identidade. O que você deve fazer?", options: ["Ficar com o dinheiro e descartar a carteira", "Entregar à polícia ou tentar contatar o dono pelo documento", "Deixar a carteira na calçada", "Entregar para um estranho"], correctAnswer: "Entregar à polícia ou tentar contatar o dono pelo documento", explanation: "Devolver propriedade achada ao proprietário é a atitude correta."),
            ExerciseItem(prompt: "Seu alarme de fumaça dispara com um som alto e contínuo. O que você deve fazer?", options: ["Ignorar e esperar parar", "Verificar se há fogo e sair do prédio com segurança se necessário", "Trocar as baterias imediatamente", "Ir dormir"], correctAnswer: "Verificar se há fogo e sair do prédio com segurança se necessário", explanation: "Alarmes contínuos indicam fumaça ou fogo, exigindo verificação de segurança e evacuação rápida.")
        ]
    )

}
