import Foundation

struct PortugueseLanguageExerciseData {
    static let allExercises: [Exercise] = [
        categoryCrossOutEasy,
        categoryCrossOutHard,
        phraseCompletion,
        synonymsEasy,
        synonymsHard,
        antonyms,
        sentenceCompletionEasy,
        morphology,
        analogies,
        factOrOpinion,
        sequencing,
        idioms,
        rhymingPairs,
        wordAssociation,
        completingProverbs,
        compoundWords,
        prefixesSuffixes
    ]

    private static let categoryCrossOutEasy = Exercise(
        id: UUID(),
        title: "Categoria Riscada — Fácil",
        instructions: "Toque na palavra que NÃO pertence ao grupo.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "MAÇÃ, PERA, CENOURA, AMEIXA", options: ["MAÇÃ", "PERA", "CENOURA", "AMEIXA"], correctAnswer: "CENOURA", explanation: "Vegetal, não uma fruta."),
            ExerciseItem(id: UUID(), prompt: "CARRO, ÔNIBUS, COLHER, CAMINHÃO", options: ["CARRO", "ÔNIBUS", "COLHER", "CAMINHÃO"], correctAnswer: "COLHER", explanation: "Utensílio de cozinha, não um veículo."),
            ExerciseItem(id: UUID(), prompt: "OURO, GATO, CÃO, PÁSSARO", options: ["OURO", "GATO", "CÃO", "PÁSSARO"], correctAnswer: "OURO", explanation: "Metal, não um animal."),
            ExerciseItem(id: UUID(), prompt: "CAMISA, CALÇAS, GARFO, CHAPÉU", options: ["CAMISA", "CALÇAS", "GARFO", "CHAPÉU"], correctAnswer: "GARFO", explanation: "Utensílio de cozinha, não uma roupa."),
            ExerciseItem(id: UUID(), prompt: "CADEIRA, MESA, MAÇÃ, CAMA", options: ["CADEIRA", "MESA", "MAÇÃ", "CAMA"], correctAnswer: "MAÇÃ", explanation: "Fruta, não um móvel."),
            ExerciseItem(id: UUID(), prompt: "MARTELO, CHAVE, TRAVESSEIRO, BROCA", options: ["MARTELO", "CHAVE", "TRAVESSEIRO", "BROCA"], correctAnswer: "TRAVESSEIRO", explanation: "Item de cama, não uma ferramenta."),
            ExerciseItem(id: UUID(), prompt: "JANEIRO, MARÇO, SEXTA-FEIRA, MAIO", options: ["JANEIRO", "MARÇO", "SEXTA-FEIRA", "MAIO"], correctAnswer: "SEXTA-FEIRA", explanation: "Dia da semana, não um mês."),
            ExerciseItem(id: UUID(), prompt: "PARIS, LONDRES, JÚPITER, ROMA", options: ["PARIS", "LONDRES", "JÚPITER", "ROMA"], correctAnswer: "JÚPITER", explanation: "Planeta, não uma cidade."),
            ExerciseItem(id: UUID(), prompt: "CÃO, GATO, ÁRVORE, RATO", options: ["CÃO", "GATO", "ÁRVORE", "RATO"], correctAnswer: "ÁRVORE", explanation: "Planta, não um animal."),
            ExerciseItem(id: UUID(), prompt: "OLHO, NARIZ, CARRO, ORELHA", options: ["OLHO", "NARIZ", "CARRO", "ORELHA"], correctAnswer: "CARRO", explanation: "Veículo, não uma parte do corpo."),
            ExerciseItem(id: UUID(), prompt: "LEITE, SUCO, PÃO, ÁGUA", options: ["LEITE", "SUCO", "PÃO", "ÁGUA"], correctAnswer: "PÃO", explanation: "Alimento sólido, não uma bebida."),
            ExerciseItem(id: UUID(), prompt: "SOFÁ, CAMA, FOGÃO, CADEIRA", options: ["SOFÁ", "CAMA", "FOGÃO", "CADEIRA"], correctAnswer: "FOGÃO", explanation: "Eletrodoméstico, não um móvel para sentar ou deitar."),
            ExerciseItem(id: UUID(), prompt: "ROSA, TULIPA, MARGARIDA, CARRO", options: ["ROSA", "TULIPA", "MARGARIDA", "CARRO"], correctAnswer: "CARRO", explanation: "Veículo, não uma flor."),
            ExerciseItem(id: UUID(), prompt: "CANETA, LÁPIS, GIZ DE CERA, GARFO", options: ["CANETA", "LÁPIS", "GIZ DE CERA", "GARFO"], correctAnswer: "GARFO", explanation: "Utensílio de cozinha, não um instrumento de escrita."),
            ExerciseItem(id: UUID(), prompt: "SOFÁ, TAPETE, LÂMPADA, FRANGO", options: ["SOFÁ", "TAPETE", "LÂMPADA", "FRANGO"], correctAnswer: "FRANGO", explanation: "Alimento, não um item doméstico."),
            ExerciseItem(id: UUID(), prompt: "SOL, CHUVA, VENTO, CAMISA", options: ["SOL", "CHUVA", "VENTO", "CAMISA"], correctAnswer: "CAMISA", explanation: "Roupa, não um fenômeno meteorológico."),
            ExerciseItem(id: UUID(), prompt: "PRATO, TAÇA, COPO, CARRO", options: ["PRATO", "TAÇA", "COPO", "CARRO"], correctAnswer: "CARRO", explanation: "Veículo, não um recipiente."),
            ExerciseItem(id: UUID(), prompt: "ÔNIBUS, TREM, BARCO, GATO", options: ["ÔNIBUS", "TREM", "BARCO", "GATO"], correctAnswer: "GATO", explanation: "Animal, não um meio de transporte."),
            ExerciseItem(id: UUID(), prompt: "CHAPÉU, MEIAS, SAPATOS, POTE", options: ["CHAPÉU", "MEIAS", "SAPATOS", "POTE"], correctAnswer: "POTE", explanation: "Recipiente, não uma roupa."),
            ExerciseItem(id: UUID(), prompt: "GATO, CÃO, PÁSSARO, CAMINHÃO", options: ["GATO", "CÃO", "PÁSSARO", "CAMINHÃO"], correctAnswer: "CAMINHÃO", explanation: "Veículo, não um animal."),
            ExerciseItem(id: UUID(), prompt: "MARÇO, ABRIL, TERÇA-FEIRA, JUNHO", options: ["MARÇO", "ABRIL", "TERÇA-FEIRA", "JUNHO"], correctAnswer: "TERÇA-FEIRA", explanation: "Dia da semana, não um mês."),
            ExerciseItem(id: UUID(), prompt: "VERMELHO, AZUL, MESA, VERDE", options: ["VERMELHO", "AZUL", "MESA", "VERDE"], correctAnswer: "MESA", explanation: "Móvel, não uma cor."),
            ExerciseItem(id: UUID(), prompt: "FACA, GARFO, COLHER, CAMA", options: ["FACA", "GARFO", "COLHER", "CAMA"], correctAnswer: "CAMA", explanation: "Móvel, não um talher."),
            ExerciseItem(id: UUID(), prompt: "ÁGUIA, FALCÃO, CORUJA, PEIXE", options: ["ÁGUIA", "FALCÃO", "CORUJA", "PEIXE"], correctAnswer: "PEIXE", explanation: "Animal aquático, não uma ave."),
            ExerciseItem(id: UUID(), prompt: "REAL, CENTAVO, MOEDA, JAQUETA", options: ["REAL", "CENTAVO", "MOEDA", "JAQUETA"], correctAnswer: "JAQUETA", explanation: "Roupa, não algo relacionado a dinheiro."),
            ExerciseItem(id: UUID(), prompt: "LEÃO, URSO, TIGRE, PIZZA", options: ["LEÃO", "URSO", "TIGRE", "PIZZA"], correctAnswer: "PIZZA", explanation: "Alimento, não um animal selvagem."),
            ExerciseItem(id: UUID(), prompt: "MAÇÃ, BANANA, CENOURA, UVA", options: ["MAÇÃ", "BANANA", "CENOURA", "UVA"], correctAnswer: "CENOURA", explanation: "Vegetal, não uma fruta."),
            ExerciseItem(id: UUID(), prompt: "CADEIRA, SOFÁ, MESA, GOLFINHO", options: ["CADEIRA", "SOFÁ", "MESA", "GOLFINHO"], correctAnswer: "GOLFINHO", explanation: "Animal, não um móvel."),
            ExerciseItem(id: UUID(), prompt: "SABIÁ, ÁGUIA, SALMÃO, PAPAGAIO", options: ["SABIÁ", "ÁGUIA", "SALMÃO", "PAPAGAIO"], correctAnswer: "SALMÃO", explanation: "Peixe, não uma ave."),
            ExerciseItem(id: UUID(), prompt: "BEISEBOL, TÊNIS, XADREZ, FUTEBOL", options: ["BEISEBOL", "TÊNIS", "XADREZ", "FUTEBOL"], correctAnswer: "XADREZ", explanation: "Jogo de tabuleiro, não um esporte físico.")
        ]
    )

    private static let categoryCrossOutHard = Exercise(
        id: UUID(),
        title: "Categoria Riscada — Difícil",
        instructions: "Toque na palavra que NÃO pertence ao grupo.",
        section: .language,
        type: .categoryCrossOut,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "SÍMILE, METÁFORA, HIPÉRBOLE, PARÁGRAFO", options: ["SÍMILE", "METÁFORA", "HIPÉRBOLE", "PARÁGRAFO"], correctAnswer: "PARÁGRAFO", explanation: "Estrutura de texto, não uma figura de linguagem."),
            ExerciseItem(id: UUID(), prompt: "FÊMUR, TÍBIA, RÁDIO, CÓRNEA", options: ["FÊMUR", "TÍBIA", "RÁDIO", "CÓRNEA"], correctAnswer: "CÓRNEA", explanation: "Parte do olho, não um osso."),
            ExerciseItem(id: UUID(), prompt: "BEETHOVEN, MOZART, PICASSO, CHOPIN", options: ["BEETHOVEN", "MOZART", "PICASSO", "CHOPIN"], correctAnswer: "PICASSO", explanation: "Pintor, não um compositor."),
            ExerciseItem(id: UUID(), prompt: "CARDIGÃ, BLAZER, GOLA ALTA, SALTO ALTO", options: ["CARDIGÃ", "BLAZER", "GOLA ALTA", "SALTO ALTO"], correctAnswer: "SALTO ALTO", explanation: "Calçado, não uma roupa de cima."),
            ExerciseItem(id: UUID(), prompt: "TAMISA, NILO, AMAZÔNIA, EVEREST", options: ["TAMISA", "NILO", "AMAZÔNIA", "EVEREST"], correctAnswer: "EVEREST", explanation: "Montanha, não um rio."),
            ExerciseItem(id: UUID(), prompt: "MEMÓRIAS, BIOGRAFIA, AUTOBIOGRAFIA, SONETO", options: ["MEMÓRIAS", "BIOGRAFIA", "AUTOBIOGRAFIA", "SONETO"], correctAnswer: "SONETO", explanation: "Poema, não uma forma de não ficção em prosa."),
            ExerciseItem(id: UUID(), prompt: "INSULINA, ADRENALINA, ESTROGÊNIO, IBUPROFENO", options: ["INSULINA", "ADRENALINA", "ESTROGÊNIO", "IBUPROFENO"], correctAnswer: "IBUPROFENO", explanation: "Medicamento sintético, não um hormônio natural."),
            ExerciseItem(id: UUID(), prompt: "CELSIUS, FAHRENHEIT, KELVIN, DECIBEL", options: ["CELSIUS", "FAHRENHEIT", "KELVIN", "DECIBEL"], correctAnswer: "DECIBEL", explanation: "Unidade de som, não de temperatura."),
            ExerciseItem(id: UUID(), prompt: "JÚRI, JUIZ, oficial de justiça, REQUERENTE", options: ["JÚRI", "JUIZ", "oficial de justiça", "REQUERENTE"], correctAnswer: "REQUERENTE", explanation: "Parte em processo judicial, não um oficial do tribunal."),
            ExerciseItem(id: UUID(), prompt: "SONETO, HAICAI, LIMERIQUE, PROSA", options: ["SONETO", "HAICAI", "LIMERIQUE", "PROSA"], correctAnswer: "PROSA", explanation: "Escrita não métrica, não uma forma poética."),
            ExerciseItem(id: UUID(), prompt: "SOPRANO, CONTRALTO, TENOR, MAESTRO", options: ["SOPRANO", "CONTRALTO", "TENOR", "MAESTRO"], correctAnswer: "MAESTRO", explanation: "Rege a orquestra, não é um tipo de voz."),
            ExerciseItem(id: UUID(), prompt: "IMPRESSIONISMO, SURREALISMO, CUBISMO, JAZZ", options: ["IMPRESSIONISMO", "SURREALISMO", "CUBISMO", "JAZZ"], correctAnswer: "JAZZ", explanation: "Gênero musical, não um movimento artístico visual."),
            ExerciseItem(id: UUID(), prompt: "ESTOCOLMO, OSLO, HELSINQUE, BRUXELAS", options: ["ESTOCOLMO", "OSLO", "HELSINQUE", "BRUXELAS"], correctAnswer: "BRUXELAS", explanation: "Capital da Bélgica, não da Escandinávia."),
            ExerciseItem(id: UUID(), prompt: "RUBI, SAFIRA, ESMERALDA, GRANITO", options: ["RUBI", "SAFIRA", "ESMERALDA", "GRANITO"], correctAnswer: "GRANITO", explanation: "Rocha, não uma pedra preciosa."),
            ExerciseItem(id: UUID(), prompt: "APÊNDICE, VESÍCULA BILIAR, PÂNCREAS, FÊMUR", options: ["APÊNDICE", "VESÍCULA BILIAR", "PÂNCREAS", "FÊMUR"], correctAnswer: "FÊMUR", explanation: "Osso, não um órgão interno."),
            ExerciseItem(id: UUID(), prompt: "VIOLONCELO, VIOLA, HARPA, OBOÉ", options: ["VIOLONCELO", "VIOLA", "HARPA", "OBOÉ"], correctAnswer: "OBOÉ", explanation: "Instrumento de sopro de madeira, não um instrumento de corda."),
            ExerciseItem(id: UUID(), prompt: "FRESCO, MOSAICO, LITOGRAFIA, SONATA", options: ["FRESCO", "MOSAICO", "LITOGRAFIA", "SONATA"], correctAnswer: "SONATA", explanation: "Composição musical, não uma técnica de arte visual."),
            ExerciseItem(id: UUID(), prompt: "ARQUIPÉLAGO, FIORDE, PLATÔ, DIALETO", options: ["ARQUIPÉLAGO", "FIORDE", "PLATÔ", "DIALETO"], correctAnswer: "DIALETO", explanation: "Variante linguística, não uma forma geográfica."),
            ExerciseItem(id: UUID(), prompt: "MAGNÉSIO, CÁLCIO, POTÁSSIO, PETRÓLEO", options: ["MAGNÉSIO", "CÁLCIO", "POTÁSSIO", "PETRÓLEO"], correctAnswer: "PETRÓLEO", explanation: "Combustível fóssil, não um mineral ou elemento."),
            ExerciseItem(id: UUID(), prompt: "FLAMENCO, TANGO, VALSA, ÓPERA", options: ["FLAMENCO", "TANGO", "VALSA", "ÓPERA"], correctAnswer: "ÓPERA", explanation: "Forma musical teatral, não uma dança."),
            ExerciseItem(id: UUID(), prompt: "ARTÉRIA, VEIA, CAPILAR, TENDÃO", options: ["ARTÉRIA", "VEIA", "CAPILAR", "TENDÃO"], correctAnswer: "TENDÃO", explanation: "Tecido conjuntivo, não um vaso sanguíneo."),
            ExerciseItem(id: UUID(), prompt: "TUNDRA, TAIGA, SAVANA, DELTA", options: ["TUNDRA", "TAIGA", "SAVANA", "DELTA"], correctAnswer: "DELTA", explanation: "Formação geográfica fluvial, não um bioma."),
            ExerciseItem(id: UUID(), prompt: "TUFÃO, CICLONE, MONÇÃO, TREMOR", options: ["TUFÃO", "CICLONE", "MONÇÃO", "TREMOR"], correctAnswer: "TREMOR", explanation: "Evento sísmico, não um fenômeno meteorológico."),
            ExerciseItem(id: UUID(), prompt: "CARTILAGEM, LIGAMENTO, TENDÃO, NEURÔNIO", options: ["CARTILAGEM", "LIGAMENTO", "TENDÃO", "NEURÔNIO"], correctAnswer: "NEURÔNIO", explanation: "Célula nervosa, não um tecido conjuntivo.")
        ]
    )

    private static let phraseCompletion = Exercise(
        id: UUID(),
        title: "Completar Frases",
        instructions: "Escolha a palavra que melhor completa a frase.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"comer ___\"", options: ["pão", "água", "vento", "papel"], correctAnswer: "pão", explanation: "Comemos pão."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"beber ___\"", options: ["água", "pedra", "cama", "árvore"], correctAnswer: "água", explanation: "Bebemos água."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"dormir na ___\"", options: ["cama", "mesa", "janela", "faca"], correctAnswer: "cama", explanation: "Dormimos na cama."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"escovar os ___\"", options: ["dentes", "sapatos", "livros", "pratos"], correctAnswer: "dentes", explanation: "Escovamos os dentes."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"lavar as ___\"", options: ["mãos", "roupas", "pedras", "estrelas"], correctAnswer: "mãos", explanation: "Lavamos as mãos."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"ligar o ___\"", options: ["computador", "cachorro", "jardim", "livro"], correctAnswer: "computador", explanation: "Ligamos o computador."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"fechar a ___\"", options: ["porta", "montanha", "estrela", "nuvem"], correctAnswer: "porta", explanation: "Fechamos a porta."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"ler um ___\"", options: ["livro", "martelo", "sapato", "gato"], correctAnswer: "livro", explanation: "Lemos um livro."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"cozinhar o ___\"", options: ["jantar", "carro", "tapete", "relógio"], correctAnswer: "jantar", explanation: "Cozinhamos o jantar."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"dirigir o ___\"", options: ["carro", "sorvete", "pássaro", "lápis"], correctAnswer: "carro", explanation: "Dirigimos o carro."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"acender a ___\"", options: ["luz", "pedra", "sopa", "canção"], correctAnswer: "luz", explanation: "Acendemos a luz."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"comprar no ___\"", options: ["mercado", "oceano", "céu", "sonho"], correctAnswer: "mercado", explanation: "Compramos no mercado."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"sentar na ___\"", options: ["cadeira", "nuvem", "chuva", "música"], correctAnswer: "cadeira", explanation: "Sentamos na cadeira."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"escrever com a ___\"", options: ["caneta", "sopa", "flor", "janela"], correctAnswer: "caneta", explanation: "Escrevemos com a caneta."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"assistir à ___\"", options: ["televisão", "bicicleta", "geladeira", "semente"], correctAnswer: "televisão", explanation: "Assistimos à televisão."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"tocar o ___\"", options: ["piano", "sorvete", "sapato", "vento"], correctAnswer: "piano", explanation: "Tocamos o piano."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"plantar uma ___\"", options: ["flor", "cadeira", "tigela", "faca"], correctAnswer: "flor", explanation: "Plantamos uma flor."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"ouvir uma ___\"", options: ["música", "mesa", "pedra", "cama"], correctAnswer: "música", explanation: "Ouvimos uma música."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"andar de ___\"", options: ["bicicleta", "sopa", "livro", "nuvem"], correctAnswer: "bicicleta", explanation: "Andamos de bicicleta."),
            ExerciseItem(id: UUID(), prompt: "Complete a frase comum: \"pagar a ___\"", options: ["conta", "estrela", "árvore", "borboleta"], correctAnswer: "conta", explanation: "Pagamos a conta.")
        ]
    )

    private static let synonymsEasy = Exercise(
        id: UUID(),
        title: "Sinônimos — Fácil",
        instructions: "Escolha a palavra que tem o mesmo significado que a palavra em maiúsculas.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "IRRITADO", options: ["furioso", "feliz", "calmo", "animado"], correctAnswer: "furioso", explanation: "Irritado e furioso têm significados semelhantes."),
            ExerciseItem(id: UUID(), prompt: "FRIO", options: ["congelando", "quente", "morno", "abrasador"], correctAnswer: "congelando", explanation: "Frio e congelando descrevem temperaturas baixas."),
            ExerciseItem(id: UUID(), prompt: "PEQUENO", options: ["minúsculo", "grande", "enorme", "largo"], correctAnswer: "minúsculo", explanation: "Pequeno e minúsculo descrevem algo de pouco tamanho."),
            ExerciseItem(id: UUID(), prompt: "RÁPIDO", options: ["veloz", "lento", "quieto", "pesado"], correctAnswer: "veloz", explanation: "Rápido e veloz indicam alta velocidade."),
            ExerciseItem(id: UUID(), prompt: "BONITO", options: ["lindo", "feio", "simples", "antigo"], correctAnswer: "lindo", explanation: "Bonito e lindo expressam beleza."),
            ExerciseItem(id: UUID(), prompt: "COMEÇO", options: ["início", "fim", "meio", "final"], correctAnswer: "início", explanation: "Começo e início referem-se ao ponto de partida."),
            ExerciseItem(id: UUID(), prompt: "FELIZ", options: ["alegre", "triste", "com raiva", "confuso"], correctAnswer: "alegre", explanation: "Feliz e alegre descrevem sentimentos positivos."),
            ExerciseItem(id: UUID(), prompt: "FALAR", options: ["dizer", "ouvir", "ver", "andar"], correctAnswer: "dizer", explanation: "Falar e dizer envolvem comunicação oral."),
            ExerciseItem(id: UUID(), prompt: "TERMINAR", options: ["concluir", "começar", "continuar", "pausar"], correctAnswer: "concluir", explanation: "Terminar e concluir significam chegar ao fim."),
            ExerciseItem(id: UUID(), prompt: "DIFÍCIL", options: ["complicado", "fácil", "simples", "claro"], correctAnswer: "complicado", explanation: "Difícil e complicado descrevem algo trabalhoso.")
        ]
    )

    private static let synonymsHard = Exercise(
        id: UUID(),
        title: "Sinônimos — Difícil",
        instructions: "Escolha a palavra que tem o mesmo significado que a palavra em maiúsculas.",
        section: .language,
        type: .multipleChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(id: UUID(), prompt: "MELANCOLIA", options: ["triste", "alegre", "furioso", "calmo"], correctAnswer: "triste", explanation: "Melancolia descreve um estado de tristeza profunda."),
            ExerciseItem(id: UUID(), prompt: "TRANQUILO", options: ["pacífico", "agitado", "barulhento", "ansioso"], correctAnswer: "pacífico", explanation: "Tranquilo e pacífico descrevem calma e sossego."),
            ExerciseItem(id: UUID(), prompt: "ELOQUENTE", options: ["expressivo", "silencioso", "confuso", "tímido"], correctAnswer: "expressivo", explanation: "Eloquente e expressivo descrevem boa capacidade de falar."),
            ExerciseItem(id: UUID(), prompt: "ÁRDUO", options: ["exaustivo", "fácil", "simples", "rápido"], correctAnswer: "exaustivo", explanation: "Árduo e exaustivo descrevem algo muito difícil ou cansativo."),
            ExerciseItem(id: UUID(), prompt: "ASTUTO", options: ["esperto", "ingênuo", "honesto", "lento"], correctAnswer: "esperto", explanation: "Astuto e esperto indicam inteligência prática."),
            ExerciseItem(id: UUID(), prompt: "EFÊMERO", options: ["passageiro", "eterno", "duradouro", "estável"], correctAnswer: "passageiro", explanation: "Efêmero e passageiro descrevem algo de curta duração."),
            ExerciseItem(id: UUID(), prompt: "OUSADO", options: ["corajoso", "medroso", "tímido", "cauteloso"], correctAnswer: "corajoso", explanation: "Ousado e corajoso descrevem atitude de enfrentar desafios."),
            ExerciseItem(id: UUID(), prompt: "SÁBIO", options: ["prudente", "impulsivo", "ignorante", "ingênuo"], correctAnswer: "prudente", explanation: "Sábio e prudente indicam bom julgamento."),
            ExerciseItem(id: UUID(), prompt: "RARO", options: ["incomum", "comum", "frequente", "habitual"], correctAnswer: "incomum", explanation: "Raro e incomum descrevem algo que não ocorre com frequência."),
            ExerciseItem(id: UUID(), prompt: "GENEROSO", options: ["pródigo", "avaro", "egoísta", "mesquinho"], correctAnswer: "pródigo", explanation: "Generoso e pródigo descrevem quem dá com abundância.")
        ]
    )

    private static let antonyms = Exercise(
        id: UUID(),
        title: "Antônimos",
        instructions: "Escolha a palavra que tem o significado OPOSTO à palavra em maiúsculas.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "QUENTE", options: ["frio", "morno", "tépido", "ardente"], correctAnswer: "frio", explanation: "Quente e frio são opostos de temperatura."),
            ExerciseItem(id: UUID(), prompt: "FELIZ", options: ["triste", "alegre", "animado", "contente"], correctAnswer: "triste", explanation: "Feliz e triste são estados emocionais opostos."),
            ExerciseItem(id: UUID(), prompt: "GRANDE", options: ["pequeno", "enorme", "gigante", "largo"], correctAnswer: "pequeno", explanation: "Grande e pequeno são opostos de tamanho."),
            ExerciseItem(id: UUID(), prompt: "RÁPIDO", options: ["lento", "veloz", "ágil", "ligeiro"], correctAnswer: "lento", explanation: "Rápido e lento são opostos de velocidade."),
            ExerciseItem(id: UUID(), prompt: "VELHO", options: ["novo", "antigo", "usado", "desgastado"], correctAnswer: "novo", explanation: "Velho e novo são opostos de idade ou estado."),
            ExerciseItem(id: UUID(), prompt: "CLARO", options: ["escuro", "brilhante", "luminoso", "reluzente"], correctAnswer: "escuro", explanation: "Claro e escuro são opostos de luminosidade."),
            ExerciseItem(id: UUID(), prompt: "CHEIO", options: ["vazio", "repleto", "lotado", "carregado"], correctAnswer: "vazio", explanation: "Cheio e vazio são opostos de quantidade."),
            ExerciseItem(id: UUID(), prompt: "ALTO", options: ["baixo", "enorme", "largo", "comprido"], correctAnswer: "baixo", explanation: "Alto e baixo são opostos de altura."),
            ExerciseItem(id: UUID(), prompt: "RICO", options: ["pobre", "abastado", "próspero", "opulento"], correctAnswer: "pobre", explanation: "Rico e pobre são opostos de situação financeira."),
            ExerciseItem(id: UUID(), prompt: "FORTE", options: ["fraco", "robusto", "poderoso", "vigoroso"], correctAnswer: "fraco", explanation: "Forte e fraco são opostos de força.")
        ]
    )

    private static let sentenceCompletionEasy = Exercise(
        id: UUID(),
        title: "Conclusão de Frase — Fácil",
        instructions: "Escolha a palavra correta para completar cada frase.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Ela regou o ___.", options: ["flores", "pisos", "farinha"], correctAnswer: "flores", explanation: "Regamos flores para que cresçam."),
            ExerciseItem(id: UUID(), prompt: "Ele colocou seu ___.", options: ["casaco", "barco", "cabra"], correctAnswer: "casaco", explanation: "Colocamos um casaco para nos agasalhar."),
            ExerciseItem(id: UUID(), prompt: "Preciso de um copo de ___.", options: ["água", "garçom", "pernalta"], correctAnswer: "água", explanation: "Bebemos água de um copo."),
            ExerciseItem(id: UUID(), prompt: "Ela ligou para a ___.", options: ["mãe", "incomodar", "espuma"], correctAnswer: "mãe", explanation: "Ligamos para a mãe para conversar."),
            ExerciseItem(id: UUID(), prompt: "O cachorro abanou a ___.", options: ["cauda", "conto", "alto"], correctAnswer: "cauda", explanation: "Cachorros abanam a cauda quando estão felizes."),
            ExerciseItem(id: UUID(), prompt: "Ele desligou a ___.", options: ["luz", "lutar", "noite"], correctAnswer: "luz", explanation: "Desligamos a luz ao sair do quarto."),
            ExerciseItem(id: UUID(), prompt: "Ela assou um ___.", options: ["bolo", "falso", "lago"], correctAnswer: "bolo", explanation: "Assamos bolo no forno."),
            ExerciseItem(id: UUID(), prompt: "O pássaro construiu um ___.", options: ["ninho", "descansar", "teste"], correctAnswer: "ninho", explanation: "Pássaros constroem ninhos para seus filhotes."),
            ExerciseItem(id: UUID(), prompt: "Ele leu o ___.", options: ["jornal", "papel usado", "lixa"], correctAnswer: "jornal", explanation: "Lemos o jornal para nos informar."),
            ExerciseItem(id: UUID(), prompt: "As crianças brincavam no ___.", options: ["parque", "latir", "escuro"], correctAnswer: "parque", explanation: "Crianças brincam no parque."),
            ExerciseItem(id: UUID(), prompt: "Ele consertou a ___.", options: ["pia", "tia", "magia"], correctAnswer: "pia", explanation: "Consertamos a pia da cozinha quando ela vaza."),
            ExerciseItem(id: UUID(), prompt: "A sopa estava muito ___.", options: ["quente", "muito", "ponto"], correctAnswer: "quente", explanation: "A sopa pode estar muito quente para comer."),
            ExerciseItem(id: UUID(), prompt: "Ela abriu o ___.", options: ["guarda-chuva", "baunilha", "gorila"], correctAnswer: "guarda-chuva", explanation: "Abrimos o guarda-chuva quando chove."),
            ExerciseItem(id: UUID(), prompt: "Ele pagou a ___.", options: ["conta", "preencher", "moinho"], correctAnswer: "conta", explanation: "Pagamos a conta no restaurante."),
            ExerciseItem(id: UUID(), prompt: "O gato sentou-se no ___.", options: ["tapete", "morcego", "rato"], correctAnswer: "tapete", explanation: "Gatos gostam de sentar no tapete."),
            ExerciseItem(id: UUID(), prompt: "Ela usava um ___ quente.", options: ["suéter", "mata-moscas", "espalhar"], correctAnswer: "suéter", explanation: "Vestimos um suéter quando está frio."),
            ExerciseItem(id: UUID(), prompt: "Ela plantou um ___.", options: ["jardim", "perdão", "diretor"], correctAnswer: "jardim", explanation: "Plantamos flores num jardim."),
            ExerciseItem(id: UUID(), prompt: "Ela escreveu em seu ___.", options: ["diário", "laticínios", "margarida"], correctAnswer: "diário", explanation: "Escrevemos pensamentos no diário."),
            ExerciseItem(id: UUID(), prompt: "Ele pagou a ___.", options: ["conta", "preencher", "moinho"], correctAnswer: "conta", explanation: "Pagamos a conta antes de sair."),
            ExerciseItem(id: UUID(), prompt: "O bebê está ___.", options: ["dormindo", "varrendo", "vazando"], correctAnswer: "dormindo", explanation: "O bebê está dormindo no berço.")
        ]
    )

    private static let morphology = Exercise(
        id: UUID(),
        title: "Morfologia e Gramática",
        instructions: "Escolha a opção correta para preencher a lacuna.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Forma conjugada de 'beber' (3ª pessoa singular, passado): 'O gato ___ leite.'", options: ["bebeu", "beberam", "bebi", "bebemos"], correctAnswer: "bebeu", explanation: "No Pretérito Perfeito, 3ª pessoa singular de 'beber' é 'bebeu'."),
            ExerciseItem(id: UUID(), prompt: "Forma conjugada de 'beber' (3ª pessoa plural, passado): 'Os gatos ___ leite.'", options: ["beberam", "bebeu", "bebi", "bebemos"], correctAnswer: "beberam", explanation: "No Pretérito Perfeito, 3ª pessoa plural de 'beber' é 'beberam'."),
            ExerciseItem(id: UUID(), prompt: "Pronome pessoal reto adequado: '___ vamos ao supermercado.'", options: ["Nós", "Eles", "Eu", "Ela"], correctAnswer: "Nós", explanation: "'Nós' é o pronome pessoal reto para a 1ª pessoa do plural."),
            ExerciseItem(id: UUID(), prompt: "Artigo adequado para substantivo feminino plural: '___ maçãs estão maduras.'", options: ["As", "Os", "Uma", "Uns"], correctAnswer: "As", explanation: "'As' é o artigo definido feminino plural."),
            ExerciseItem(id: UUID(), prompt: "Artigo adequado para substantivo masculino plural: '___ carros são novos.'", options: ["Os", "As", "Uma", "Uns"], correctAnswer: "Os", explanation: "'Os' é o artigo definido masculino plural."),
            ExerciseItem(id: UUID(), prompt: "Preposição correta: 'O livro pertence ___ Maria.'", options: ["à", "o", "de", "com"], correctAnswer: "à", explanation: "'À' é a crase correta (a + a) antes de nome feminino."),
            ExerciseItem(id: UUID(), prompt: "Adjetivo no plural feminino: 'Essas flores são ___.'", options: ["bonitas", "bonita", "bonito", "bonitos"], correctAnswer: "bonitas", explanation: "O adjetivo concorda com o substantivo feminino plural."),
            ExerciseItem(id: UUID(), prompt: "Plural correto de 'pão':", options: ["pães", "pãos", "pãezinhos", "pão"], correctAnswer: "pães", explanation: "O plural de 'pão' é 'pães'."),
            ExerciseItem(id: UUID(), prompt: "Plural correto de 'papel':", options: ["papéis", "papeles", "papel", "papeis"], correctAnswer: "papéis", explanation: "O plural de 'papel' é 'papéis'."),
            ExerciseItem(id: UUID(), prompt: "Conjugação correta no passado: 'Eu ___ uma carta para o meu amigo ontem.'", options: ["escrevi", "escrevo", "escreverei", "escreve"], correctAnswer: "escrevi", explanation: "'Escrevi' é a 1ª pessoa do singular do Pretérito Perfeito de 'escrever'."),
            ExerciseItem(id: UUID(), prompt: "Conjugação no futuro: 'Amanhã, nós ___ ao parque.'", options: ["iremos", "fomos", "vamos", "iríamos"], correctAnswer: "iremos", explanation: "'Iremos' é o futuro do presente de 'ir' na 1ª pessoa do plural."),
            ExerciseItem(id: UUID(), prompt: "Pronome demonstrativo para algo perto do ouvinte: 'Pegue ___ caneta que está aí com você.'", options: ["essa", "esta", "aquela", "isto"], correctAnswer: "essa", explanation: "'Essa' refere-se a algo próximo ao ouvinte."),
            ExerciseItem(id: UUID(), prompt: "Pronome demonstrativo para algo perto de quem fala: '___ caneta aqui na minha mão é azul.'", options: ["Esta", "Essa", "Aquela", "Aquilo"], correctAnswer: "Esta", explanation: "'Esta' refere-se a algo próximo ao falante."),
            ExerciseItem(id: UUID(), prompt: "Conjunção explicativa: 'Eu não fui trabalhar ___ estava muito doente.'", options: ["porque", "mas", "portanto", "contudo"], correctAnswer: "porque", explanation: "'Porque' introduz uma explicação ou causa."),
            ExerciseItem(id: UUID(), prompt: "Feminino de 'ator':", options: ["atriz", "atora", "mulher", "médica"], correctAnswer: "atriz", explanation: "O feminino de 'ator' é 'atriz'."),
            ExerciseItem(id: UUID(), prompt: "Feminino de 'cão':", options: ["cadela", "cão", "gata", "égua"], correctAnswer: "cadela", explanation: "O feminino de 'cão' é 'cadela'."),
            ExerciseItem(id: UUID(), prompt: "Concordância verbal: 'A menina ___ muito bem no coro.'", options: ["canta", "cantam", "cantei", "cantamos"], correctAnswer: "canta", explanation: "O sujeito singular 'a menina' exige o verbo no singular."),
            ExerciseItem(id: UUID(), prompt: "Concordância verbal: 'As crianças ___ no quintal ontem.'", options: ["brincaram", "brincou", "brincarei", "brincamos"], correctAnswer: "brincaram", explanation: "O sujeito plural 'as crianças' exige o verbo no plural."),
            ExerciseItem(id: UUID(), prompt: "Aumentativo correto de 'casa':", options: ["casarão", "casinha", "casebre", "casas"], correctAnswer: "casarão", explanation: "'Casarão' é o aumentativo de 'casa'."),
            ExerciseItem(id: UUID(), prompt: "Diminutivo correto de 'chuva':", options: ["chuvisco", "chuvona", "chuvarada", "chuveiro"], correctAnswer: "chuvisco", explanation: "'Chuvisco' indica chuva fraca e miúda, o diminutivo de 'chuva'.")
        ]
    )

    private static let analogies = Exercise(
        id: UUID(),
        title: "Analogias",
        instructions: "Escolha a palavra que completa a analogia.",
        section: .language,
        type: .analogyChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "FILHOTE DE CACHORRO : CÃO :: GATINHO : ___", options: ["Gato", "Cachorro", "Pássaro", "Peixe"], correctAnswer: "Gato", explanation: "Assim como o filhote de cachorro cresce e vira um cão, o gatinho cresce e vira um gato."),
            ExerciseItem(id: UUID(), prompt: "FRIO : INVERNO :: QUENTE : ___", options: ["Primavera", "Outono", "Verão", "Chuva"], correctAnswer: "Verão", explanation: "O frio é característico do inverno, assim como o calor é característico do verão."),
            ExerciseItem(id: UUID(), prompt: "OLHO : VER :: OUVIDO : ___", options: ["Tocar", "Ouvir", "Cheirar", "Provar"], correctAnswer: "Ouvir", explanation: "O olho serve para ver, assim como o ouvido serve para ouvir."),
            ExerciseItem(id: UUID(), prompt: "CHEF : COZINHA :: MÉDICO : ___", options: ["Biblioteca", "Hospital", "Escola", "Loja"], correctAnswer: "Hospital", explanation: "O chef trabalha na cozinha, assim como o médico trabalha no hospital."),
            ExerciseItem(id: UUID(), prompt: "LUVA : MÃO :: MEIA : ___", options: ["Braço", "Joelho", "Pé", "Cabeça"], correctAnswer: "Pé", explanation: "A luva cobre a mão, assim como a meia cobre o pé."),
            ExerciseItem(id: UUID(), prompt: "FELIZ : RIR :: TRISTE : ___", options: ["Sorrir", "Dormir", "Chorar", "Correr"], correctAnswer: "Chorar", explanation: "Quando estamos felizes, rimos; quando estamos tristes, choramos."),
            ExerciseItem(id: UUID(), prompt: "PÁSSARO : NINHO :: URSO : ___", options: ["Árvore", "Caverna", "Oceano", "Campo"], correctAnswer: "Caverna", explanation: "O pássaro vive no ninho, assim como o urso vive na caverna."),
            ExerciseItem(id: UUID(), prompt: "LÁPIS : ESCREVER :: PINCEL : ___", options: ["Cortar", "Pintar", "Varrer", "Mexer"], correctAnswer: "Pintar", explanation: "O lápis é usado para escrever, assim como o pincel é usado para pintar."),
            ExerciseItem(id: UUID(), prompt: "DIA : NOITE :: PRETO : ___", options: ["Escuro", "Cinza", "Branco", "Azul"], correctAnswer: "Branco", explanation: "O dia é oposto à noite, assim como o preto é oposto ao branco."),
            ExerciseItem(id: UUID(), prompt: "SOLDADO : EXÉRCITO :: MARINHEIRO : ___", options: ["Força Aérea", "Fuzileiros Navais", "Marinha", "Guarda"], correctAnswer: "Marinha", explanation: "O soldado pertence ao exército, assim como o marinheiro pertence à marinha."),
            ExerciseItem(id: UUID(), prompt: "RODA : CARRO :: ASA : ___", options: ["Barco", "Avião", "Trem", "Ônibus"], correctAnswer: "Avião", explanation: "A roda é parte essencial do carro, assim como a asa é parte essencial do avião."),
            ExerciseItem(id: UUID(), prompt: "PROFESSOR : ESCOLA :: JUIZ : ___", options: ["Escritório", "Hospital", "Tribunal", "Loja"], correctAnswer: "Tribunal", explanation: "O professor trabalha na escola, assim como o juiz trabalha no tribunal."),
            ExerciseItem(id: UUID(), prompt: "LAGARTA : BORBOLETA :: GIRINO : ___", options: ["Peixe", "Tartaruga", "Sapo", "Lagarto"], correctAnswer: "Sapo", explanation: "A lagarta se transforma em borboleta, assim como o girino se transforma em sapo."),
            ExerciseItem(id: UUID(), prompt: "COMIDA : FOME :: ÁGUA : ___", options: ["Molhado", "Com sede", "Frio", "Completo"], correctAnswer: "Com sede", explanation: "Comida satisfaz a fome, assim como água satisfaz a sede."),
            ExerciseItem(id: UUID(), prompt: "LÃ : OVELHAS :: SEDA : ___", options: ["Aranha", "Bicho-da-seda", "Algodão", "Linho"], correctAnswer: "Bicho-da-seda", explanation: "A lã vem das ovelhas, assim como a seda vem do bicho-da-seda.")
        ]
    )

    private static let factOrOpinion = Exercise(
        id: UUID(),
        title: "Fato ou Opinião",
        instructions: "Decida se cada afirmação é um fato ou uma opinião.",
        section: .language,
        type: .factOrOpinion,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Existem 7 dias em uma semana.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade verificável."),
            ExerciseItem(id: UUID(), prompt: "Baunilha é o melhor sabor de sorvete.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "O sabor favorito varia de pessoa para pessoa."),
            ExerciseItem(id: UUID(), prompt: "A água congela a 0 graus Celsius.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade científica verificável."),
            ExerciseItem(id: UUID(), prompt: "Os cães são os melhores animais de estimação.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "A preferência por animais de estimação é subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Um triângulo tem três lados.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade matemática."),
            ExerciseItem(id: UUID(), prompt: "Esse programa de TV é engraçado.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "O que é engraçado varia de pessoa para pessoa."),
            ExerciseItem(id: UUID(), prompt: "Abraham Lincoln foi um presidente dos Estados Unidos.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Este é um fato histórico verificável."),
            ExerciseItem(id: UUID(), prompt: "A Terra é o melhor planeta.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Não existe uma forma objetiva de classificar planetas assim."),
            ExerciseItem(id: UUID(), prompt: "Há 60 minutos em uma hora.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade verificável sobre tempo."),
            ExerciseItem(id: UUID(), prompt: "As tulipas são mais bonitas que as rosas.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "A beleza das flores é subjetiva."),
            ExerciseItem(id: UUID(), prompt: "Brasília é a capital do Brasil.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Este é um fato geográfico verificável."),
            ExerciseItem(id: UUID(), prompt: "É rude falar com a boca cheia.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "Normas de etiqueta variam entre culturas."),
            ExerciseItem(id: UUID(), prompt: "Há 12 meses em um ano.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade verificável sobre calendário."),
            ExerciseItem(id: UUID(), prompt: "Acordar cedo é bom para você.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "O que é benéfico varia conforme o estilo de vida de cada um."),
            ExerciseItem(id: UUID(), prompt: "2 + 2 = 4.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Este é um fato matemático."),
            ExerciseItem(id: UUID(), prompt: "O oceano é feito de água salgada.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade científica sobre os oceanos."),
            ExerciseItem(id: UUID(), prompt: "Jardinar é um ótimo hobby.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "O que constitui um bom hobby é subjetivo."),
            ExerciseItem(id: UUID(), prompt: "Pedras são mais pesadas que penas do mesmo tamanho.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Pedras têm maior densidade e são mais pesadas que penas."),
            ExerciseItem(id: UUID(), prompt: "O Brasil tem 26 estados e um Distrito Federal.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Este é um fato político-geográfico verificável."),
            ExerciseItem(id: UUID(), prompt: "Pizza é a melhor comida.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "A comida preferida varia de pessoa para pessoa."),
            ExerciseItem(id: UUID(), prompt: "O exercício é benéfico para a saúde.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Estudos científicos comprovam os benefícios do exercício."),
            ExerciseItem(id: UUID(), prompt: "A música clássica é chata.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "O gosto musical é totalmente subjetivo."),
            ExerciseItem(id: UUID(), prompt: "Maçãs e laranjas são frutas.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma classificação botânica verificável."),
            ExerciseItem(id: UUID(), prompt: "Os gatos são mais fáceis de cuidar do que os cães.", options: ["Fact", "Opinion"], correctAnswer: "Opinion", explanation: "A facilidade de cuidado depende das preferências do dono."),
            ExerciseItem(id: UUID(), prompt: "Existem 24 horas em um dia.", options: ["Fact", "Opinion"], correctAnswer: "Fact", explanation: "Esta é uma verdade verificável sobre o tempo.")
        ]
    )

    private static let sequencing = Exercise(
        id: UUID(),
        title: "Sequenciamento de Atividades",
        instructions: "Coloque as etapas na ordem correta para completar a atividade.",
        section: .language,
        type: .sequencing,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Fazendo torradas", options: ["Coloque pão na torradeira", "Remova da torradeira", "Passe manteiga na torrada", "Coma"], correctAnswer: "Coloque pão na torradeira | Remova da torradeira | Passe manteiga na torrada | Coma", explanation: "Primeiro coloque o pão, depois retire, passe manteiga e coma."),
            ExerciseItem(id: UUID(), prompt: "Lavando as mãos", options: ["Ligue a água", "Aplique sabonete nas mãos", "Esfregue por 20 segundos", "Seque as mãos com uma toalha"], correctAnswer: "Ligue a água | Aplique sabonete nas mãos | Esfregue por 20 segundos | Seque as mãos com uma toalha", explanation: "A ordem correta garante a higiene das mãos."),
            ExerciseItem(id: UUID(), prompt: "Fazendo café", options: ["Encha o reservatório de água", "Adicione borra de café ao filtro", "Pressione o botão de preparação", "Despeje café em sua xícara"], correctAnswer: "Encha o reservatório de água | Adicione borra de café ao filtro | Pressione o botão de preparação | Despeje café em sua xícara", explanation: "Prepare a máquina antes de ligar e servir o café."),
            ExerciseItem(id: UUID(), prompt: "Fazendo uma ligação", options: ["Pegue o telefone", "Disque o número", "Diga olá", "Desligue"], correctAnswer: "Pegue o telefone | Disque o número | Diga olá | Desligue", explanation: "Primeiro pegue o telefone, disque, converse e desligue."),
            ExerciseItem(id: UUID(), prompt: "Vestindo-se", options: ["Coloque roupa íntima", "Coloque a camisa", "Coloque meias", "Coloque sapatos"], correctAnswer: "Coloque roupa íntima | Coloque a camisa | Coloque meias | Coloque sapatos", explanation: "Vista as peças de dentro para fora, de cima para baixo."),
            ExerciseItem(id: UUID(), prompt: "Varrendo o chão", options: ["Pegue a vassoura", "Varra os detritos em uma pilha", "Coloque os detritos na pá de lixo", "Descarte no lixo"], correctAnswer: "Pegue a vassoura | Varra os detritos em uma pilha | Coloque os detritos na pá de lixo | Descarte no lixo", explanation: "Siga a ordem para limpar o chão corretamente."),
            ExerciseItem(id: UUID(), prompt: "Pedindo em um restaurante", options: ["Sente-se", "Informe ao servidor seu pedido", "Espere pela sua comida", "Coma sua refeição"], correctAnswer: "Sente-se | Informe ao servidor seu pedido | Espere pela sua comida | Coma sua refeição", explanation: "Primeiro sente, depois peça, espere e coma."),
            ExerciseItem(id: UUID(), prompt: "Assando biscoitos", options: ["Misture os ingredientes", "Pré-aqueça o forno", "Asse no forno", "Deixe os biscoitos esfriarem"], correctAnswer: "Misture os ingredientes | Pré-aqueça o forno | Asse no forno | Deixe os biscoitos esfriarem", explanation: "Prepare a massa, aqueça o forno, asse e espere esfriar.")
        ]
    )

    private static let idioms = Exercise(
        id: UUID(),
        title: "Expressões Idiomáticas",
        instructions: "Escolha o significado correto de cada expressão idiomática.",
        section: .language,
        type: .multipleChoice,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"chover no molhado\"?", options: ["insistir em um assunto óbvio ou inútil", "chover na floresta", "tomar banho de chuva", "ficar gripado"], correctAnswer: "insistir em um assunto óbvio ou inútil", explanation: "Chover no molhado significa repetir o que já é sabido."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"tirar o cavalo da chuva\"?", options: ["desistir de uma ilusão ou pretensão", "guardar o animal no estábulo", "proteger as coisas da água", "sair para passear"], correctAnswer: "desistir de uma ilusão ou pretensão", explanation: "Significa abandonar uma ideia ou esperança irrealista."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"engolir sapos\"?", options: ["suportar ofensas ou desaforos calado", "comer carne de anfíbio", "mentir para os amigos", "ficar com dor de garganta"], correctAnswer: "suportar ofensas ou desaforos calado", explanation: "Significa aguentar situações humilhantes sem reagir."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"chutar o balde\"?", options: ["perder a paciência, o controle ou desistir de tudo", "derrubar água no chão", "jogar futebol", "limpar a casa correndo"], correctAnswer: "perder a paciência, o controle ou desistir de tudo", explanation: "Significa explodir de raiva ou abandonar tudo de uma vez."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"tapar o sol com a peneira\"?", options: ["tentar esconder um problema grave com uma solução inútil", "usar óculos escuros", "ir para a praia", "fazer um telhado de palha"], correctAnswer: "tentar esconder um problema grave com uma solução inútil", explanation: "Significa tentar disfarçar algo óbvio de forma ineficaz."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"quebrar o galho\"?", options: ["fazer um favor improvisado ou resolver temporariamente um problema", "derrubar um galho de árvore", "destruir a natureza", "sofrer um acidente"], correctAnswer: "fazer um favor improvisado ou resolver temporariamente um problema", explanation: "Significa ajudar alguém de forma provisória."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"pisar em ovos\"?", options: ["agir com extrema cautela em uma situação difícil", "fazer uma receita de bolo", "sujar os sapatos na cozinha", "andar rápido no quintal"], correctAnswer: "agir com extrema cautela em uma situação difícil", explanation: "Significa agir com muito cuidado para não piorar a situação."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"dar com a língua nos dentes\"?", options: ["revelar um segredo sem querer ou fofocar", "morder a própria língua", "ir ao dentista", "falar muito rápido"], correctAnswer: "revelar um segredo sem querer ou fofocar", explanation: "Significa contar algo que deveria ficar em segredo."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"pagar o pato\"?", options: ["sofrer as consequências ou levar a culpa por algo que não fez", "comprar uma ave na feira", "fazer um jantar de domingo", "gastar muito dinheiro"], correctAnswer: "sofrer as consequências ou levar a culpa por algo que não fez", explanation: "Significa ser responsabilizado injustamente."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"chorar o leite derramado\"?", options: ["lamentar por algo que já aconteceu e não pode ser consertado", "limpar a sujeira da cozinha", "derramar a jarra de leite", "ficar triste sem motivo"], correctAnswer: "lamentar por algo que já aconteceu e não pode ser consertado", explanation: "Significa lamentar uma situação irreversível."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"enfiar o pé na jaca\"?", options: ["cometer excessos, comer ou beber demais", "pisar em uma fruta grande", "machucar o pé no jardim", "ir a uma feira de frutas"], correctAnswer: "cometer excessos, comer ou beber demais", explanation: "Significa exagerar em algo, especialmente na comida ou bebida."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"de cortar o coração\"?", options: ["algo extremamente triste ou comovente", "fazer uma cirurgia cardíaca", "sentir uma dor no peito", "ficar zangado com alguém"], correctAnswer: "algo extremamente triste ou comovente", explanation: "Significa algo que provoca grande emoção ou tristeza."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"dar uma mãozinha\"?", options: ["ajudar ou auxiliar alguém em uma tarefa", "acenar de longe para um amigo", "fazer um cumprimento físico", "desenhar uma figura"], correctAnswer: "ajudar ou auxiliar alguém em uma tarefa", explanation: "Significa oferecer ajuda a alguém."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"cara de pau\"?", options: ["pessoa desavergonhada, cínica ou atrevida", "máscara de madeira", "ter a pele seca", "pessoa que não sorri"], correctAnswer: "pessoa desavergonhada, cínica ou atrevida", explanation: "Descreve alguém sem vergonha ou constrangimento."),
            ExerciseItem(id: UUID(), prompt: "Qual é o significado da expressão \"segurar vela\"?", options: ["acompanhar um casal sobrando na conversa", "iluminar um quarto escuro", "ir a uma missa", "fazer uma brincadeira de criança"], correctAnswer: "acompanhar um casal sobrando na conversa", explanation: "Significa ser o terceiro numa situação romântica de duas pessoas.")
        ]
    )

    private static let rhymingPairs = Exercise(
        id: UUID(),
        title: "Pares de Rimas",
        instructions: "Escolha a palavra que rima com a palavra fornecida.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"gato\":", options: ["rato", "casa", "asa", "mala"], correctAnswer: "rato", explanation: "'Gato' e 'rato' rimam porque ambos terminam com o som '-ato'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"casa\":", options: ["asa", "bala", "pé", "café"], correctAnswer: "asa", explanation: "'Casa' e 'asa' rimam porque ambos terminam com o som '-asa'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"mala\":", options: ["bala", "sol", "farol", "mão"], correctAnswer: "bala", explanation: "'Mala' e 'bala' rimam porque ambos terminam com o som '-ala'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"pé\":", options: ["café", "pão", "lua", "rua"], correctAnswer: "café", explanation: "'Pé' e 'café' rimam porque ambos terminam com o som '-é'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"sol\":", options: ["farol", "mar", "cantar", "vento"], correctAnswer: "farol", explanation: "'Sol' e 'farol' rimam porque ambos terminam com o som '-ol'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"mão\":", options: ["pão", "sentimento", "mel", "anel"], correctAnswer: "pão", explanation: "'Mão' e 'pão' rimam porque ambos terminam com o som '-ão'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"canção\":", options: ["coração", "chave", "nave", "bola"], correctAnswer: "coração", explanation: "'Canção' e 'coração' rimam porque ambos terminam com o som '-ão'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"lua\":", options: ["rua", "escola", "dente", "mente"], correctAnswer: "rua", explanation: "'Lua' e 'rua' rimam porque ambos terminam com o som '-ua'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"mar\":", options: ["cantar", "cão", "flor", "amor"], correctAnswer: "cantar", explanation: "'Mar' e 'cantar' rimam porque ambos terminam com o som '-ar'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"vento\":", options: ["sentimento", "luz", "cruz", "fogo"], correctAnswer: "sentimento", explanation: "'Vento' e 'sentimento' rimam porque ambos terminam com o som '-ento'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"mel\":", options: ["anel", "jogo", "dia", "alegria"], correctAnswer: "anel", explanation: "'Mel' e 'anel' rimam porque ambos terminam com o som '-el'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"chave\":", options: ["nave", "mesa", "beleza", "gato"], correctAnswer: "nave", explanation: "'Chave' e 'nave' rimam porque ambos terminam com o som '-ave'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"bola\":", options: ["escola", "rato", "casa", "asa"], correctAnswer: "escola", explanation: "'Bola' e 'escola' rimam porque ambos terminam com o som '-ola'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"dente\":", options: ["mente", "mala", "bala", "pé"], correctAnswer: "mente", explanation: "'Dente' e 'mente' rimam porque ambos terminam com o som '-ente'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"cão\":", options: ["pão", "café", "sol", "farol"], correctAnswer: "pão", explanation: "'Cão' e 'pão' rimam porque ambos terminam com o som '-ão'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"flor\":", options: ["amor", "mão", "lua", "rua"], correctAnswer: "amor", explanation: "'Flor' e 'amor' rimam porque ambos terminam com o som '-or'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"luz\":", options: ["cruz", "mar", "cantar", "vento"], correctAnswer: "cruz", explanation: "'Luz' e 'cruz' rimam porque ambos terminam com o som '-uz'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"fogo\":", options: ["jogo", "sentimento", "mel", "anel"], correctAnswer: "jogo", explanation: "'Fogo' e 'jogo' rimam porque ambos terminam com o som '-ogo'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"dia\":", options: ["alegria", "chave", "nave", "bola"], correctAnswer: "alegria", explanation: "'Dia' e 'alegria' rimam porque ambos terminam com o som '-ia'."),
            ExerciseItem(id: UUID(), prompt: "Escolha a palavra que rima com \"mesa\":", options: ["beleza", "escola", "dente", "mente"], correctAnswer: "beleza", explanation: "'Mesa' e 'beleza' rimam porque ambos terminam com o som '-eza'.")
        ]
    )

    private static let wordAssociation = Exercise(
        id: UUID(),
        title: "Associação de Palavras",
        instructions: "Escolha a palavra mais associada à palavra dada.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "MÉDICO", options: ["Hospital", "Aeroporto", "Biblioteca", "Fazenda"], correctAnswer: "Hospital", explanation: "Os médicos trabalham em hospitais para cuidar dos pacientes."),
            ExerciseItem(id: UUID(), prompt: "PÃO", options: ["Manteiga", "Martelo", "Sabonete", "Lápis"], correctAnswer: "Manteiga", explanation: "A manteiga é comumente espalhada no pão."),
            ExerciseItem(id: UUID(), prompt: "COZINHA", options: ["Fogão", "Cama", "Chuveiro", "Carro"], correctAnswer: "Fogão", explanation: "Um fogão é o principal eletrodoméstico de uma cozinha."),
            ExerciseItem(id: UUID(), prompt: "BIBLIOTECA", options: ["Livros", "Roupas", "Ferramentas", "Mercearia"], correctAnswer: "Livros", explanation: "As bibliotecas armazenam e emprestam livros."),
            ExerciseItem(id: UUID(), prompt: "SAPATO", options: ["Meia", "Chapéu", "Luva", "Cinto"], correctAnswer: "Meia", explanation: "As meias são usadas dentro dos sapatos."),
            ExerciseItem(id: UUID(), prompt: "ASTRONAUTA", options: ["Espaço", "Oceano", "Selva", "Deserto"], correctAnswer: "Espaço", explanation: "Os astronautas viajam para o espaço."),
            ExerciseItem(id: UUID(), prompt: "PROFESSOR", options: ["Escola", "Fábrica", "Teatro", "Ginásio"], correctAnswer: "Escola", explanation: "Os professores instruem os alunos nas escolas."),
            ExerciseItem(id: UUID(), prompt: "OCEANO", options: ["Peixe", "Pássaro", "Vaca", "Aranha"], correctAnswer: "Peixe", explanation: "Os peixes vivem no oceano."),
            ExerciseItem(id: UUID(), prompt: "CARRO", options: ["Pneu", "Asa", "Sela", "Velejar"], correctAnswer: "Pneu", explanation: "Os pneus são componentes essenciais dos automóveis."),
            ExerciseItem(id: UUID(), prompt: "CHUVA", options: ["Guarda-chuva", "Óculos de sol", "Luvas", "Lenço"], correctAnswer: "Guarda-chuva", explanation: "Um guarda-chuva protege você da chuva."),
            ExerciseItem(id: UUID(), prompt: "FOGO", options: ["Fumaça", "Gelo", "Folha", "Moeda"], correctAnswer: "Fumaça", explanation: "O fogo produz fumaça."),
            ExerciseItem(id: UUID(), prompt: "DENTISTA", options: ["Dentes", "Cabelo", "Olhos", "Pés"], correctAnswer: "Dentes", explanation: "Dentistas são especializados em saúde bucal e dentes."),
            ExerciseItem(id: UUID(), prompt: "CAFÉ", options: ["Caneca", "Tigela", "Prato", "Garfo"], correctAnswer: "Caneca", explanation: "O café normalmente é servido em uma caneca."),
            ExerciseItem(id: UUID(), prompt: "JARDIM", options: ["Flores", "Computadores", "Fogões", "Casacos"], correctAnswer: "Flores", explanation: "As flores crescem em um jardim."),
            ExerciseItem(id: UUID(), prompt: "CHAVE", options: ["Fechadura", "Janela", "Telhado", "Piso"], correctAnswer: "Fechadura", explanation: "As chaves são usadas para abrir fechaduras."),
            ExerciseItem(id: UUID(), prompt: "CORREIO", options: ["Carta", "Pão", "Medicina", "Bilhete"], correctAnswer: "Carta", explanation: "As cartas são enviadas pelos correios."),
            ExerciseItem(id: UUID(), prompt: "PIANO", options: ["Música", "Pintar", "Argila", "Madeira"], correctAnswer: "Música", explanation: "Um piano é um instrumento usado para tocar música."),
            ExerciseItem(id: UUID(), prompt: "ABELHA", options: ["Mel", "Leite", "Lã", "Seda"], correctAnswer: "Mel", explanation: "As abelhas produzem mel."),
            ExerciseItem(id: UUID(), prompt: "ARANHA", options: ["Rede", "Ninho", "Colmeia", "Toca"], correctAnswer: "Rede", explanation: "As aranhas tecem teias."),
            ExerciseItem(id: UUID(), prompt: "AGRICULTOR", options: ["Trator", "Avião", "Submarino", "Trem"], correctAnswer: "Trator", explanation: "Os agricultores usam tratores para trabalhar a terra.")
        ]
    )

    private static let completingProverbs = Exercise(
        id: UUID(),
        title: "Completar Provérbios",
        instructions: "Escolha a palavra correta para completar o provérbio.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "Mais vale um pássaro na mão do que dois ___", options: ["voando", "cantando", "comendo", "correndo"], correctAnswer: "voando", explanation: "É melhor ter algo garantido do que arriscar por mais."),
            ExerciseItem(id: UUID(), prompt: "Quem não tem cão, caça com ___", options: ["gato", "rato", "cavalo", "pássaro"], correctAnswer: "gato", explanation: "Devemos nos virar com os recursos que temos disponíveis."),
            ExerciseItem(id: UUID(), prompt: "De grão em grão, a galinha enche o ___", options: ["papo", "saco", "estômago", "bico"], correctAnswer: "papo", explanation: "Grandes objetivos são alcançados aos poucos, com paciência."),
            ExerciseItem(id: UUID(), prompt: "Água mole em pedra dura, tanto bate até que ___", options: ["fura", "quebra", "racha", "molha"], correctAnswer: "fura", explanation: "A persistência ajuda a alcançar objetivos difíceis."),
            ExerciseItem(id: UUID(), prompt: "A cavalo dado não se olha o ___", options: ["dente", "pelo", "olho", "rabo"], correctAnswer: "dente", explanation: "Não devemos criticar presentes ou favores que recebemos."),
            ExerciseItem(id: UUID(), prompt: "Quem semeia ventos, colhe ___", options: ["tempestades", "chuvas", "flores", "frutos"], correctAnswer: "tempestades", explanation: "Ações ruins trarão consequências graves no futuro."),
            ExerciseItem(id: UUID(), prompt: "Antes tarde do que ___", options: ["nunca", "sempre", "ontem", "amanhã"], correctAnswer: "nunca", explanation: "É melhor realizar algo atrasado do que nunca fazer."),
            ExerciseItem(id: UUID(), prompt: "A pressa é inimiga da ___", options: ["perfeição", "velocidade", "calma", "beleza"], correctAnswer: "perfeição", explanation: "Fazer as coisas com pressa geralmente resulta em erros."),
            ExerciseItem(id: UUID(), prompt: "Cada macaco no seu ___", options: ["galho", "lugar", "quarto", "carro"], correctAnswer: "galho", explanation: "Cada pessoa deve se preocupar com suas próprias obrigações."),
            ExerciseItem(id: UUID(), prompt: "Filho de peixe, peixinho ___", options: ["é", "nada", "morre", "cresce"], correctAnswer: "é", explanation: "Os filhos herdam as características dos pais."),
            ExerciseItem(id: UUID(), prompt: "Não há rosa sem ___", options: ["espinhos", "folhas", "pétalas", "perfume"], correctAnswer: "espinhos", explanation: "Toda coisa boa na vida também traz algumas dificuldades."),
            ExerciseItem(id: UUID(), prompt: "Onde há fumaça, há ___", options: ["fogo", "vento", "calor", "brasa"], correctAnswer: "fogo", explanation: "Se há indícios de algo, geralmente há alguma verdade por trás."),
            ExerciseItem(id: UUID(), prompt: "Quem canta seus males ___", options: ["espanta", "aumenta", "chora", "esquece"], correctAnswer: "espanta", explanation: "A música e o bom humor ajudam a superar as tristezas."),
            ExerciseItem(id: UUID(), prompt: "Quem cala ___", options: ["consente", "fala", "perde", "ganha"], correctAnswer: "consente", explanation: "Se você não se opuser a algo, as pessoas assumirão que concorda."),
            ExerciseItem(id: UUID(), prompt: "Quem ri por último, ri ___", options: ["melhor", "pior", "primeiro", "mais alto"], correctAnswer: "melhor", explanation: "O resultado final é o que importa, não quem comemora antes."),
            ExerciseItem(id: UUID(), prompt: "Gato escaldado tem medo de água ___", options: ["fria", "quente", "suja", "limpa"], correctAnswer: "fria", explanation: "Quem já passou por experiência dolorosa fica muito cauteloso."),
            ExerciseItem(id: UUID(), prompt: "Deus ajuda quem cedo ___", options: ["madruga", "acorda", "trabalha", "estuda"], correctAnswer: "madruga", explanation: "As pessoas esforçadas que começam cedo têm mais chances de sucesso."),
            ExerciseItem(id: UUID(), prompt: "Mais vale prevenir do que ___", options: ["remediar", "chorar", "pagar", "perder"], correctAnswer: "remediar", explanation: "É melhor tomar precauções do que tentar consertar depois."),
            ExerciseItem(id: UUID(), prompt: "Nem tudo o que reluz é ___", options: ["ouro", "prata", "brilhante", "metal"], correctAnswer: "ouro", explanation: "As aparências enganam — muitas coisas parecem valiosas mas não são."),
            ExerciseItem(id: UUID(), prompt: "Olho por olho, dente por ___", options: ["dente", "olho", "mão", "pé"], correctAnswer: "dente", explanation: "Refere-se ao princípio da retaliação equivalente ao dano sofrido.")
        ]
    )

    private static let compoundWords = Exercise(
        id: UUID(),
        title: "Palavras Compostas",
        instructions: "Escolha a palavra composta correta formada pela união das duas palavras.",
        section: .language,
        type: .multipleChoice,
        difficulty: .easy,
        items: [
            ExerciseItem(id: UUID(), prompt: "guarda + chuva = ___", options: ["guarda-chuva", "guarda-sol", "guarda-roupa", "guarda-costas"], correctAnswer: "guarda-chuva", explanation: "O objeto usado para nos proteger da chuva é o guarda-chuva."),
            ExerciseItem(id: UUID(), prompt: "passa + tempo = ___", options: ["passatempo", "passaporte", "passadiço", "passagem"], correctAnswer: "passatempo", explanation: "Uma atividade de lazer usada para passar o tempo é um passatempo."),
            ExerciseItem(id: UUID(), prompt: "beija + flor = ___", options: ["beija-flor", "beijo-doce", "beijoqueiro", "beijinho"], correctAnswer: "beija-flor", explanation: "O pequeno pássaro conhecido por pairar no ar e sugar néctar das flores."),
            ExerciseItem(id: UUID(), prompt: "arco + íris = ___", options: ["arco-íris", "arco-flecha", "arcada", "arcoverde"], correctAnswer: "arco-íris", explanation: "O fenômeno óptico colorido que aparece no céu após a chuva."),
            ExerciseItem(id: UUID(), prompt: "guarda + sol = ___", options: ["guarda-sol", "guarda-chuva", "guarda-costas", "guarda-pó"], correctAnswer: "guarda-sol", explanation: "O objeto grande usado na praia para nos proteger do sol."),
            ExerciseItem(id: UUID(), prompt: "segunda + feira = ___", options: ["segunda-feira", "terça-feira", "quarta-feira", "sexta-feira"], correctAnswer: "segunda-feira", explanation: "O primeiro dia útil da semana é a segunda-feira."),
            ExerciseItem(id: UUID(), prompt: "couve + flor = ___", options: ["couve-flor", "couve-manteiga", "repolho", "alface"], correctAnswer: "couve-flor", explanation: "A hortaliça comestível de cor branca que lembra um buquê de flores."),
            ExerciseItem(id: UUID(), prompt: "guarda + roupa = ___", options: ["guarda-roupa", "guarda-sol", "guarda-chuva", "guarda-costas"], correctAnswer: "guarda-roupa", explanation: "O móvel de quarto usado para armazenar e pendurar roupas."),
            ExerciseItem(id: UUID(), prompt: "gira + sol = ___", options: ["girassol", "gira-gira", "giratório", "reviravolta"], correctAnswer: "girassol", explanation: "A flor amarela grande cujo botão acompanha a trajetória do sol."),
            ExerciseItem(id: UUID(), prompt: "ponta + pé = ___", options: ["pontapé", "pontalete", "pontaria", "ponta-direita"], correctAnswer: "pontapé", explanation: "O ato de chutar ou desferir um golpe com a ponta do pé."),
            ExerciseItem(id: UUID(), prompt: "saca + rolhas = ___", options: ["saca-rolhas", "saca-areia", "sacador", "saca-pino"], correctAnswer: "saca-rolhas", explanation: "O utensílio usado para puxar e retirar rolhas de garrafas de vinho."),
            ExerciseItem(id: UUID(), prompt: "bem + estar = ___", options: ["bem-estar", "bem-vindo", "bem-me-quer", "bem-te-vi"], correctAnswer: "bem-estar", explanation: "O estado de satisfação física, mental e de boa saúde."),
            ExerciseItem(id: UUID(), prompt: "mal + estar = ___", options: ["mal-estar", "maledicência", "malfeito", "malvado"], correctAnswer: "mal-estar", explanation: "A sensação física de desconforto, indisposição ou leve doença."),
            ExerciseItem(id: UUID(), prompt: "obra + prima = ___", options: ["obra-prima", "obra-de-arte", "obreiro", "obrigatoriedade"], correctAnswer: "obra-prima", explanation: "A obra mais marcante, perfeita ou principal de um artista."),
            ExerciseItem(id: UUID(), prompt: "porta + malas = ___", options: ["porta-malas", "porta-luvas", "porta-retratos", "porta-chaves"], correctAnswer: "porta-malas", explanation: "O compartimento traseiro de um carro usado para transportar bagagens."),
            ExerciseItem(id: UUID(), prompt: "guarda + costas = ___", options: ["guarda-costas", "guarda-vidas", "guarda-noturno", "guarda-florestal"], correctAnswer: "guarda-costas", explanation: "O profissional encarregado de proteger a segurança física de uma pessoa."),
            ExerciseItem(id: UUID(), prompt: "para + quedas = ___", options: ["paraquedas", "paralama", "parabrisa", "parachoque"], correctAnswer: "paraquedas", explanation: "O equipamento usado para retardar a queda livre no ar."),
            ExerciseItem(id: UUID(), prompt: "bate + papo = ___", options: ["bate-papo", "bate-papo-furado", "bate-boca", "bate-estaca"], correctAnswer: "bate-papo", explanation: "Uma conversa informal, amigável e descontraída."),
            ExerciseItem(id: UUID(), prompt: "quebra + cabeça = ___", options: ["quebra-cabeça", "quebra-mar", "quebra-molas", "cabeçada"], correctAnswer: "quebra-cabeça", explanation: "O jogo de montar peças que desafia o raciocínio."),
            ExerciseItem(id: UUID(), prompt: "vaga + lume = ___", options: ["vaga-lume", "vagão", "lume-frio", "vaga-mansa"], correctAnswer: "vaga-lume", explanation: "O inseto que emite luz própria durante a noite.")
        ]
    )

    private static let prefixesSuffixes = Exercise(
        id: UUID(),
        title: "Prefixos e Sufixos",
        instructions: "Escolha a palavra que melhor demonstra o significado do afixo indicado.",
        section: .language,
        type: .sentenceCompletion,
        difficulty: .medium,
        items: [
            ExerciseItem(id: UUID(), prompt: "O prefixo \"in-\" indica negação. Qual palavra usa esse prefixo?", options: ["infeliz", "felizmente", "felicidade", "felizardo"], correctAnswer: "infeliz", explanation: "'Infeliz' usa 'in-' para indicar o oposto de feliz."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-mente\" forma advérbios. Qual palavra usa esse sufixo?", options: ["felizmente", "infeliz", "felicidade", "felizardo"], correctAnswer: "felizmente", explanation: "'Felizmente' é um advérbio formado com o sufixo '-mente'."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"des-\" indica reversão ou negação. Qual palavra usa esse prefixo?", options: ["desfazer", "fazer", "refazer", "fazedor"], correctAnswer: "desfazer", explanation: "'Desfazer' usa 'des-' para indicar a ação oposta de fazer."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-eiro\" indica profissão ou ofício. Qual palavra usa esse sufixo?", options: ["padeiro", "padaria", "pãozinho", "panificadora"], correctAnswer: "padeiro", explanation: "'Padeiro' usa '-eiro' para indicar quem faz ou vende pão."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-aria\" indica estabelecimento comercial. Qual palavra usa esse sufixo?", options: ["livraria", "livreiro", "livro", "livrinho"], correctAnswer: "livraria", explanation: "'Livraria' é o estabelecimento onde se vendem livros."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"re-\" indica repetição. Qual palavra usa esse prefixo?", options: ["refazer", "desfazer", "fazer", "fazedor"], correctAnswer: "refazer", explanation: "'Refazer' usa 're-' para indicar fazer novamente."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"a-\" pode indicar negação. Qual palavra usa esse prefixo com sentido de negação?", options: ["anormal", "normalidade", "normalmente", "normalizar"], correctAnswer: "anormal", explanation: "'Anormal' usa 'a-' para indicar o que não é normal."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-eza\" forma substantivos abstratos de qualidade. Qual palavra usa esse sufixo?", options: ["beleza", "belo", "embelezar", "belíssimo"], correctAnswer: "beleza", explanation: "'Beleza' usa '-eza' para indicar a qualidade de ser belo."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-ista\" indica profissão. Qual palavra usa esse sufixo?", options: ["dentista", "dentadura", "dente", "dentário"], correctAnswer: "dentista", explanation: "'Dentista' usa '-ista' para indicar o profissional dos dentes."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-eiro\" indica profissão. Qual palavra usa esse sufixo?", options: ["sapateiro", "sapataria", "sapato", "sapatinho"], correctAnswer: "sapateiro", explanation: "'Sapateiro' usa '-eiro' para indicar quem faz ou conserta sapatos."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-dade\" forma substantivos abstratos de qualidade. Qual palavra usa esse sufixo?", options: ["bondade", "bondoso", "bom", "bondosamente"], correctAnswer: "bondade", explanation: "'Bondade' usa '-dade' para indicar a qualidade de ser bom."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-mente\" forma advérbios de modo. Qual palavra usa esse sufixo?", options: ["rapidamente", "rápido", "rapidez", "rápida"], correctAnswer: "rapidamente", explanation: "'Rapidamente' é um advérbio formado com '-mente'."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"in-\" indica negação. Qual palavra usa esse prefixo?", options: ["invisível", "visível", "visibilidade", "visão"], correctAnswer: "invisível", explanation: "'Invisível' usa 'in-' para indicar o que não pode ser visto."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"des-\" indica negação ou reversão. Qual palavra usa esse prefixo?", options: ["desleal", "leal", "lealdade", "lealmente"], correctAnswer: "desleal", explanation: "'Desleal' usa 'des-' para indicar falta de lealdade."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-eiro\" indica profissão. Qual palavra usa esse sufixo?", options: ["jornaleiro", "jornal", "jornalismo", "jornalístico"], correctAnswer: "jornaleiro", explanation: "'Jornaleiro' usa '-eiro' para indicar quem vende jornais."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"im-\" indica negação (variante de 'in-'). Qual palavra usa esse prefixo?", options: ["impossível", "possível", "possibilidade", "possibilitar"], correctAnswer: "impossível", explanation: "'Impossível' usa 'im-' para indicar o que não é possível."),
            ExerciseItem(id: UUID(), prompt: "O prefixo \"pre-\" indica anterioridade. Qual palavra usa esse prefixo?", options: ["prever", "ver", "rever", "visão"], correctAnswer: "prever", explanation: "'Prever' usa 'pre-' para indicar ver antes que algo aconteça."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-ável\" indica capacidade ou possibilidade. Qual palavra usa esse sufixo?", options: ["amável", "amar", "amor", "amoroso"], correctAnswer: "amável", explanation: "'Amável' usa '-ável' para indicar que pode ser amado ou que é gentil."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-eza\" forma substantivos abstratos. Qual palavra usa esse sufixo?", options: ["tristeza", "triste", "entristecer", "tristemente"], correctAnswer: "tristeza", explanation: "'Tristeza' usa '-eza' para indicar o estado de ser triste."),
            ExerciseItem(id: UUID(), prompt: "O sufixo \"-ista\" indica profissão. Qual palavra usa esse sufixo?", options: ["florista", "flor", "floresta", "floricultura"], correctAnswer: "florista", explanation: "'Florista' usa '-ista' para indicar quem trabalha com flores.")
        ]
    )
}
