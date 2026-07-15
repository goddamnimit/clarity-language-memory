import Foundation


struct PortugueseHardExercisesData {

    static let allExercises: [Exercise] = [
        exercise1,
        exercise2,
        exercise3,
        exercise4,
        exercise5,
        exercise6,
        exercise7,
        exercise8,
        easyHomonyms,
        easyAnalogies,
        easyCauseEffect,
        easyWhatsWrong,
        easySequencing,
        mediumWordAssociation,
        mediumHomonyms,
        easyCompleteSaying,
        hardCompleteSaying
    ]

    // MARK: - Exercise 1: Homófonos Avançados
    private static let exercise1 = Exercise(
        title: "Homófonos Avançados",
        instructions: "Escolha a combinação correta de homófonos para completar as frases.",
        section: .language,
        type: .homonym,
        trackedType: .homonym,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "[conserto / concerto] O carro precisa de um ___. Nós fomos ao ___ de violino.", options: ["conserto...concerto", "concerto...conserto", "conserto...conserto", "concerto...concerto"], correctAnswer: "conserto...concerto", explanation: "'Conserto' refere-se a reparação de algo quebrado; 'concerto' é uma apresentação musical."),
            ExerciseItem(prompt: "[sessão / seção] A próxima ___ de cinema começa às 20h. O casaco está na ___ de roupas masculinas.", options: ["sessão...seção", "seção...sessão", "sessão...sessão", "seção...seção"], correctAnswer: "sessão...seção", explanation: "'Sessão' é um espaço de tempo dedicado a uma atividade; 'seção' é uma divisão, departamento ou setor."),
            ExerciseItem(prompt: "[traz / trás] Ele sempre ___ presentes para nós. Ela olhou para ___ antes de atravessar.", options: ["traz...trás", "trás...traz", "traz...traz", "trás...trás"], correctAnswer: "traz...trás", explanation: "'Traz' é do verbo trazer; 'trás' indica a parte de trás, uma posição traseira."),
            ExerciseItem(prompt: "[viagem / viajem] Espero que eles ___ com segurança. A nossa ___ para o Rio foi maravilhosa.", options: ["viajem...viagem", "viagem...viajem", "viagem...viagem", "viajem...viajem"], correctAnswer: "viajem...viagem", explanation: "'Viajem' é a forma verbal do verbo viajar; 'viagem' é o substantivo (a jornada)."),
            ExerciseItem(prompt: "[aço / asso] O portão foi feito de ___ resistente. Eu sempre ___ pão fresco nos domingos.", options: ["aço...asso", "asso...aço", "aço...aço", "asso...asso"], correctAnswer: "aço...asso", explanation: "'Aço' é a liga metálica ferro-carbono; 'asso' é a conjugação do verbo assar."),
            ExerciseItem(prompt: "[cela / sela] O prisioneiro foi trancado na ___. Ele colocou a ___ de couro no cavalo.", options: ["cela...sela", "sela...cela", "cela...cela", "sela...sela"], correctAnswer: "cela...sela", explanation: "'Cela' é um quarto pequeno ou prisão; 'sela' é o assento para montaria em animais."),
            ExerciseItem(prompt: "[censo / senso] A pesquisa do ___ demográfico começa este mês. Ele tem um bom ___ de justiça.", options: ["censo...senso", "senso...censo", "censo...censo", "senso...senso"], correctAnswer: "censo...senso", explanation: "'Censo' é o recenseamento da população; 'senso' é a capacidade de julgar, discernimento."),
            ExerciseItem(prompt: "[cinto / sinto] Eu ___ muito pela perda de seu cão. Ele afivelou o ___ de segurança.", options: ["sinto...cinto", "cinto...sinto", "cinto...cinto", "sinto...sinto"], correctAnswer: "sinto...cinto", explanation: "'Sinto' é do verbo sentir; 'cinto' é o acessório de vestuário para prender as calças."),
            ExerciseItem(prompt: "[cozer / coser] Ela vai ___ os vegetais para o almoço. A costureira vai ___ o rasgo na calça.", options: ["cozer...coser", "coser...cozer", "cozer...cozer", "coser...coser"], correctAnswer: "cozer...coser", explanation: "'Cozer' significa cozinhar os alimentos; 'coser' significa costurar com agulha e linha."),
            ExerciseItem(prompt: "[acento / assento] A cadeira tem um ___ muito confortável. A palavra contém um ___ agudo.", options: ["assento...acento", "acento...assento", "assento...assento", "acento...acento"], correctAnswer: "assento...acento", explanation: "'Assento' é o local de sentar; 'acento' é a marcação gráfica da sílaba tônica."),
            ExerciseItem(prompt: "[extrato / estrato] A fábrica estuda o ___ da folha da planta. A nuvem pertence ao ___ inferior da atmosfera.", options: ["extrato...estrato", "estrato...extrato", "extrato...extrato", "estrato...estrato"], correctAnswer: "extrato...estrato", explanation: "'Extrato' é o produto obtido por extração (ou resumo bancário); 'estrato' é uma camada ou faixa geológica/atmosférica."),
            ExerciseItem(prompt: "[paço / passo] O rei caminhava pelos jardins do ___. Ele deu um ___ firme em direção à porta.", options: ["paço...passo", "passo...paço", "paço...paço", "passo...passo"], correctAnswer: "paço...passo", explanation: "'Paço' é um palácio real ou sede governamental; 'passo' é o movimento de andar."),
            ExerciseItem(prompt: "[taxar / tachar] O governo decidiu ___ as grandes heranças. Ele costuma ___ os outros de preguiçosos.", options: ["taxar...tachar", "tachar...taxar", "taxar...taxar", "tachar...tachar"], correctAnswer: "taxar...tachar", explanation: "'Taxar' significa aplicar impostos ou tarifas; 'tachar' significa rotular ou qualificar com defeito."),
            ExerciseItem(prompt: "[apreçar / apressar] Fui ao mercado ___ as frutas da época. Devemos nos ___ para não perder o voo.", options: ["apreçar...apressar", "apressar...apreçar", "apreçar...apreçar", "apressar...apressar"], correctAnswer: "apreçar...apressar", explanation: "'Apreçar' significa perguntar ou avaliar o preço de algo; 'apressar' significa acelerar o andamento."),
            ExerciseItem(prompt: "[ruço / russo] O céu está ___ e ameaça chover forte. O escritor de literatura ___ é famoso.", options: ["ruço...russo", "russo...ruço", "ruço...ruço", "russo...russo"], correctAnswer: "ruço...russo", explanation: "'Ruço' significa de cor cinzenta ou uma situação complicada/nublada; 'Russo' refere-se ao país ou língua da Rússia.")
        ]
    )

    // MARK: - Exercise 2: Analogias Avançadas
    private static let exercise2 = Exercise(
        title: "Analogias Avançadas",
        instructions: "Escolha a palavra que melhor completa a analogia.",
        section: .language,
        type: .analogyChoice,
        trackedType: .analogyChoice,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "SOLILÓQUIO está para ATOR assim como SERMÃO está para ___", options: ["Sacerdote", "Fiel", "Coro", "Templo"], correctAnswer: "Sacerdote", explanation: "Um solilóquio é proferido por um ator, enquanto um sermão é proferido por um sacerdote ou pregador."),
            ExerciseItem(prompt: "PÁGINA está para LIVRO assim como TECLA está para ___", options: ["Piano", "Música", "Som", "Papel"], correctAnswer: "Piano", explanation: "A página é parte integrante de um livro, assim como a tecla é parte integrante de um piano."),
            ExerciseItem(prompt: "PENA está para PÁSSARO assim como ESCAMA está para ___", options: ["Peixe", "Rã", "Pelo", "Água"], correctAnswer: "Peixe", explanation: "A pena cobre o corpo do pássaro, enquanto a escama cobre o corpo do peixe."),
            ExerciseItem(prompt: "CORAÇÃO está para BATIMENTO assim como PULMÃO está para ___", options: ["Respiração", "Sangue", "Oxigênio", "Veia"], correctAnswer: "Respiração", explanation: "O coração realiza o batimento cardíaco, enquanto o pulmão realiza a respiração pulmonar."),
            ExerciseItem(prompt: "LEME está para NAVIO assim como VOLANTE está para ___", options: ["Carro", "Estrada", "Vento", "Roda"], correctAnswer: "Carro", explanation: "O leme direciona e conduz o navio, enquanto o volante direciona e conduz o carro."),
            ExerciseItem(prompt: "OURO está para JOIA assim como MADEIRA está para ___", options: ["Móvel", "Floresta", "Árvore", "Carvão"], correctAnswer: "Móvel", explanation: "O ouro é a matéria-prima usada nas joias, enquanto a madeira é a matéria-prima usada nos móveis."),
            ExerciseItem(prompt: "ESTETOSCÓPIO está para MÉDICO assim como TELESCÓPIO está para ___", options: ["Astrônomo", "Livro", "Computador", "Mapa"], correctAnswer: "Astrônomo", explanation: "O estetoscópio é o instrumento característico do médico, enquanto o telescópio é o do astrônomo."),
            ExerciseItem(prompt: "NOITE está para LUA assim como DIA está para ___", options: ["Sol", "Estrela", "Nuvem", "Brisa"], correctAnswer: "Sol", explanation: "A lua é o astro principal visível à noite, assim como o sol é o astro principal visível de dia."),
            ExerciseItem(prompt: "ABELHA está para COLMEIA assim como ARANHA está para ___", options: ["Teia", "Caverna", "Lagoa", "Árvore"], correctAnswer: "Teia", explanation: "A abelha constrói a colmeia, enquanto a aranha tece a teia de aranha."),
            ExerciseItem(prompt: "OLHO está para VISÃO assim como OUVIDO está para ___", options: ["Audição", "Som", "Música", "Eco"], correctAnswer: "Audição", explanation: "O olho é responsável pela visão, enquanto o ouvido é responsável pela audição."),
            ExerciseItem(prompt: "FERRO está para FERREIRO assim como ARGILA está para ___", options: ["Oleiro", "Ourives", "Alfaiate", "Agricultor"], correctAnswer: "Oleiro", explanation: "O ferreiro trabalha moldando o ferro, enquanto o oleiro trabalha moldando a argila."),
            ExerciseItem(prompt: "FOLHA está para ÁRVORE assim como PÉTALA está para ___", options: ["Flor", "Espinho", "Fruto", "Raiz"], correctAnswer: "Flor", explanation: "A folha é parte da estrutura da árvore, enquanto a pétala é parte da estrutura da flor."),
            ExerciseItem(prompt: "BRANCO está para PRETO assim como CIMA está para ___", options: ["Baixo", "Direita", "Esquerda", "Dentro"], correctAnswer: "Baixo", explanation: "Branco e preto são conceitos opostos, assim como cima e baixo são opostos."),
            ExerciseItem(prompt: "TERMÔMETRO está para TEMPERATURA assim como BARÔMETRO está para ___", options: ["Pressão atmosférica", "Tempo", "Distância", "Altura"], correctAnswer: "Pressão atmosférica", explanation: "O termômetro afere a temperatura, enquanto o barômetro afere a pressão atmosférica."),
            ExerciseItem(prompt: "LÓTUS está para PÂNTANO assim como ROSA está para ___", options: ["Espinho", "Perfume", "Vermelho", "Pétala"], correctAnswer: "Espinho", explanation: "A flor de lótus desabrocha no pântano, enquanto a rosa desabrocha no meio dos espinhos.")
        ]
    )

    // MARK: - Exercise 3: Associação de Palavras Avançada
    private static let exercise3 = Exercise(
        title: "Associação de Palavras Avançada",
        instructions: "Escolha a palavra mais estreitamente associada com a palavra dada.",
        section: .language,
        type: .multipleChoice,
        trackedType: .wordAssociation,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "ALTRUÍSMO", options: ["Generosidade", "Ganância", "Ira", "Inveja"], correctAnswer: "Generosidade", explanation: "O altruísmo é pautado pela generosidade e empatia desinteressada para com o próximo."),
            ExerciseItem(prompt: "CARNAVAL", options: ["Desfile", "Neve", "Pinheiro", "Fogueira"], correctAnswer: "Desfile", explanation: "O desfile de escolas de samba ou blocos é o símbolo maior do carnaval brasileiro."),
            ExerciseItem(prompt: "CRISTO REDENTOR", options: ["Rio de Janeiro", "São Paulo", "Salvador", "Brasília"], correctAnswer: "Rio de Janeiro", explanation: "A famosa estátua do Cristo Redentor localiza-se no topo do morro do Corcovado, no Rio de Janeiro."),
            ExerciseItem(prompt: "FEIJOADA", options: ["Couve", "Macarrão", "Batata", "Peixe"], correctAnswer: "Couve", explanation: "A couve refogada é o acompanhamento clássico e indispensável da feijoada tradicional."),
            ExerciseItem(prompt: "CAPOEIRA", options: ["Berimbau", "Flauta", "Violão", "Bateria"], correctAnswer: "Berimbau", explanation: "O berimbau é o instrumento de corda percussivo que dita o ritmo da roda de capoeira."),
            ExerciseItem(prompt: "AMAZÔNIA", options: ["Floresta", "Deserto", "Geleira", "Savana"], correctAnswer: "Floresta", explanation: "A Amazônia é a maior floresta tropical do mundo, abrigando imensa biodiversidade."),
            ExerciseItem(prompt: "CAFÉZINHO", options: ["Bule", "Garfo", "Prato", "Faca"], correctAnswer: "Bule", explanation: "O bule é o utensílio clássico para passar e servir o tradicional cafezinho brasileiro."),
            ExerciseItem(prompt: "FUTEBOL", options: ["Pelada", "Piscina", "Quadra de saibro", "Pista de gelo"], correctAnswer: "Pelada", explanation: "No Brasil, a partida recreativa e informal de futebol de rua ou campo é chamada de 'pelada'."),
            ExerciseItem(prompt: "PÃO DE QUEIJO", options: ["Minas Gerais", "Bahia", "Amazonas", "Rio Grande do Sul"], correctAnswer: "Minas Gerais", explanation: "O pão de queijo é uma iguaria tradicional originada no estado de Minas Gerais."),
            ExerciseItem(prompt: "FESTA JUNINA", options: ["Quentão", "Sorvete", "Panetone", "Chocolate"], correctAnswer: "Quentão", explanation: "O quentão é uma bebida quente à base de gengibre e especiarias típica das festas juninas."),
            ExerciseItem(prompt: "CHURRASCO", options: ["Picanha", "Arroz doce", "Macarronada", "Salada de frutas"], correctAnswer: "Picanha", explanation: "A picanha é o corte de carne bovina mais prestigiado e apreciado nos churrascos brasileiros."),
            ExerciseItem(prompt: "GUARANÁ", options: ["Fruto da Amazônia", "Raiz forte", "Cereal", "Hortaliça"], correctAnswer: "Fruto da Amazônia", explanation: "O guaraná é um fruto nativo da Amazônia muito utilizado em refrigerantes e energéticos brasileiros."),
            ExerciseItem(prompt: "BOSSA NOVA", options: ["João Gilberto", "Villa-Lobos", "Chiquinha Gonzaga", "Pixinguinha"], correctAnswer: "João Gilberto", explanation: "João Gilberto é consagrado internacionalmente como o criador e principal expoente do ritmo da Bossa Nova."),
            ExerciseItem(prompt: "AÇAÍ", options: ["Tigela", "Copo térmico", "Prato fundo", "Xícara de chá"], correctAnswer: "Tigela", explanation: "No Brasil, o creme gelado de açaí é servido tradicionalmente em uma tigela com guarnições."),
            ExerciseItem(prompt: "BERIMBAU", options: ["Gunga", "Arco", "Flauta", "Pandeiro"], correctAnswer: "Gunga", explanation: "O berimbau gunga é o berimbau de som mais grave que lidera o ritmo na roda de capoeira.")
        ]
    )

    // MARK: - Exercise 4: Completar Frases Avançado
    private static let exercise4 = Exercise(
        title: "Completar Frases Avançado",
        instructions: "Escolha a palavra que melhor completa a frase de forma coerente.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .sentenceCompletion,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "A chuva forte e constante ajudou a ___ a grave estiagem que assolava o Nordeste.", options: ["atenuar", "agravar", "manter", "prolongar"], correctAnswer: "atenuar", explanation: "A chuva reduz e alivia (atenua) a secura da terra e a estiagem."),
            ExerciseItem(prompt: "O discurso do palestrante foi muito claro e lógico, recebendo ampla ___ do público.", options: ["aprovação", "rejeição", "desconfiança", "apatia"], correctAnswer: "aprovação", explanation: "Um discurso bem elaborado e lógico tende a ser recebido com aprovação pela plateia."),
            ExerciseItem(prompt: "Mesmo diante de tantas adversidades na vida, ele manteve um espírito ___.", options: ["indomável", "fraco", "temeroso", "hesitante"], correctAnswer: "indomável", explanation: "Um espírito indomável indica força de vontade e recusa em se render às dificuldades."),
            ExerciseItem(prompt: "Esta pintura em tela possui cores muito harmoniosas e técnica primorosa, sendo uma ___.", options: ["obra-prima", "obra ruim", "cópia simples", "pintura comum"], correctAnswer: "obra-prima", explanation: "Um trabalho de arte de altíssimo nível técnico e beleza é classificado como obra-prima."),
            ExerciseItem(prompt: "Os arqueólogos, estudando os artefatos encontrados, conseguiram ___ o cotidiano da civilização antiga.", options: ["reconstituir", "distorcer", "ocultar", "esquecer"], correctAnswer: "reconstituir", explanation: "O estudo científico arqueológico visa reestruturar e reconstituir os fatos do passado."),
            ExerciseItem(prompt: "O uso de materiais recicláveis ajuda as indústrias a ___ os custos de fabricação.", options: ["reduzir", "aumentar", "manter", "ignorar"], correctAnswer: "reduzir", explanation: "Adotar boas práticas sustentáveis e materiais reutilizados reduz o custo com matéria-prima virgem."),
            ExerciseItem(prompt: "Devido a erros graves de planejamento da gestão, a empresa entrou em séria ___ financeira.", options: ["crise", "prosperidade", "expansão", "estabilidade"], correctAnswer: "crise", explanation: "Erros de planejamento de caixa acarretam diretamente uma crise de liquidez na empresa."),
            ExerciseItem(prompt: "A literatura daquele escritor é marcada por forte crítica social, denunciando as ___ da sociedade.", options: ["mazelas", "conquistas", "leis", "virtudes"], correctAnswer: "mazelas", explanation: "Literatura de engajamento social denuncia as mazelas (doenças, problemas, misérias) da sociedade."),
            ExerciseItem(prompt: "Para aliviar o congestionamento do centro da cidade, o governo municipal construiu uma avenida ___.", options: ["perimetral", "sem saída", "estreita", "temporária"], correctAnswer: "perimetral", explanation: "Avenidas perimetrais (ou contornos) desviam o tráfego pesado para fora do centro congestionado."),
            ExerciseItem(prompt: "Os resultados desse estudo acadêmico tiveram uma repercussão muito ___ no cenário científico mundial.", options: ["ampla", "limitada", "negativa", "passageira"], correctAnswer: "ampla", explanation: "Descobertas acadêmicas relevantes alcançam ampla e expressiva divulgação e debate científico."),
            ExerciseItem(prompt: "As duas empresas celebraram um acordo de ___ estratégica visando benefícios mútuos.", options: ["cooperação", "concorrência", "fusão", "disputa"], correctAnswer: "cooperação", explanation: "Um acordo de cooperação é estabelecido quando ambas as partes buscam crescer juntas de forma mútua."),
            ExerciseItem(prompt: "O documentário de natureza retrata de forma muito ___ o ciclo de vida dos pássaros migrantes.", options: ["fiel", "fictícia", "prejudicial", "exagerada"], correctAnswer: "fiel", explanation: "Bons documentários captam e expõem a realidade de forma fiel e científica."),
            ExerciseItem(prompt: "Após horas de trabalho ininterrupto dos técnicos, a rede de dados voltou ao seu funcionamento ___.", options: ["normal", "atrasado", "intermitente", "bloqueado"], correctAnswer: "normal", explanation: "O conserto de uma falha restabelece o serviço ao seu fluxo operacional normal."),
            ExerciseItem(prompt: "O Cristo Redentor é um monumento histórico famoso, sendo o ___ do turismo brasileiro.", options: ["símbolo", "álibi", "problema", "obstáculo"], correctAnswer: "símbolo", explanation: "Atrações famosas e reconhecidas mundialmente representam o símbolo da imagem turística de um país."),
            ExerciseItem(prompt: "Ele conduzia os negócios com extremo rigor ético, não aceitando qualquer atitude ___.", options: ["negligente", "disciplinada", "dedicada", "cuidadosa"], correctAnswer: "negligente", explanation: "Quem atua com rigor e seriedade rejeita qualquer conduta desleixada ou negligente.")
        ]
    )

    // MARK: - Exercise 5: Passos de Atividades
    private static let exercise5 = Exercise(
        title: "Passos de Atividades",
        instructions: "Ordene as etapas da atividade descrita em uma sequência lógica.",
        section: .language,
        type: .sequencing,
        trackedType: .sequencing,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Preparar café de coador", options: ["Aquecer a água sem deixar ferver totalmente", "Colocar o pó de café no filtro de papel ou pano", "Despejar a água quente em movimentos circulares sobre o pó", "Adoçar a gosto ou servir o café fresco nas xícaras"], correctAnswer: "Aquecer a água sem deixar ferver totalmente | Colocar o pó de café no filtro de papel ou pano | Despejar a água quente em movimentos circulares sobre o pó | Adoçar a gosto ou servir o café fresco nas xícaras", explanation: "Preparo clássico: aquecer água, colocar pó no filtro, passar a água em círculos e servir."),
            ExerciseItem(prompt: "Fazer feijoada simples", options: ["Dessalgar as carnes salgadas na água de véspera", "Cozinhar o feijão preto junto com as carnes amaciadas", "Preparar o refogado com cebola, alho e louro na panela", "Misturar o refogado na feijoada cozida e deixar apurar"], correctAnswer: "Dessalgar as carnes salgadas na água de véspera | Cozinhar o feijão preto junto com as carnes amaciadas | Preparar o refogado com cebola, alho e louro na panela | Misturar o refogado na feijoada cozida e deixar apurar", explanation: "Preparo de feijoada: dessalga de véspera, cozimento do feijão/carnes, feitura do refogado temperado, mistura e apuração final."),
            ExerciseItem(prompt: "Regar plantas do vaso", options: ["Verificar a umidade da terra com a ponta dos dedos", "Encher o regador com água limpa em temperatura ambiente", "Despejar a água suavemente ao redor da base da planta", "Guardar o regador seco em seu local correto"], correctAnswer: "Verificar a umidade da terra com a ponta dos dedos | Encher o regador com água limpa em temperatura ambiente | Despejar a água suavemente ao redor da base da planta | Guardar o regador seco em seu local correto", explanation: "Ordem correta: checar umidade do solo, encher o regador, regar a base e arrumar a ferramenta."),
            ExerciseItem(prompt: "Lavar as mãos corretamente", options: ["Aplicar sabão e esfregar bem as palmas e dedos", "Molhar as duas mãos sob a água corrente da torneira", "Enxaguar a espuma completamente com água limpa", "Secar as mãos com uma toalha limpa ou secador de ar"], correctAnswer: "Molhar as duas mãos sob a água corrente da torneira | Aplicar sabão e esfregar bem as palmas e dedos | Enxaguar a espuma completamente com água limpa | Secar as mãos com uma toalha limpa ou secador de ar", explanation: "Higiene das mãos: molhar as mãos, ensaboar/esfregar, enxaguar e secar na toalha."),
            ExerciseItem(prompt: "Cozinhar arroz branco soltinho", options: ["Lavar o arroz para remover o excesso de amido", "Refogar cebola e alho no óleo quente e juntar o arroz", "Adicionar água fervente na proporção correta e temperar com sal", "Tapar a panela e cozinhar em fogo baixo até secar a água"], correctAnswer: "Lavar o arroz para remover o excesso de amido | Refogar cebola e alho no óleo quente e juntar o arroz | Adicionar água fervente na proporção correta e temperar com sal | Tapar a panela e cozinhar em fogo baixo até secar a água", explanation: "Fazer arroz: lavar, refogar com tempero, adicionar água quente e sal, cozinhar tampado em fogo baixo."),
            ExerciseItem(prompt: "Fazer compras no supermercado", options: ["Elaborar a lista de compras necessária", "Ir ao mercado, pegar o carrinho e escolher os produtos", "Dirigir-se ao caixa e fazer o pagamento", "Embalar as compras e levá-las para casa"], correctAnswer: "Elaborar a lista de compras necessária | Ir ao mercado, pegar o carrinho e escolher os produtos | Dirigir-se ao caixa e fazer o pagamento | Embalar as compras e levá-las para casa", explanation: "Fluxo de compras: listar itens, escolher produtos nas gôndolas, pagar no caixa, empacotar e levar para casa."),
            ExerciseItem(prompt: "Pagar conta de luz online", options: ["Acessar o aplicativo do banco ou carteira digital", "Digitar o número do código de barras da fatura", "Verificar o valor da conta a ser pago", "Inserir a senha ou biometria para autorizar a transação"], correctAnswer: "Acessar o aplicativo do banco ou carteira digital | Digitar o número do código de barras da fatura | Verificar o valor da conta a ser pago | Inserir a senha ou biometria para autorizar a transação", explanation: "Pagamento online: entrar no app, ler/digitar o código, checar o valor, autorizar com a senha."),
            ExerciseItem(prompt: "Arrumar o quarto", options: ["Dobrar os lençóis e organizar os objetos espalhados", "Limpar o pó dos móveis e prateleiras com espanador", "Passar o aspirador de pó no chão da sala", "Passar pano úmido no piso com rodo"], correctAnswer: "Dobrar os lençóis e organizar os objetos espalhados | Limpar o pó dos móveis e prateleiras com espanador | Passar o aspirador de pó no chão da sala | Passar pano úmido no piso com rodo", explanation: "Arrumação de ambientes: organizar pertences, tirar o pó das alturas, aspirar o piso e passar pano úmido."),
            ExerciseItem(prompt: "Enviar uma encomenda pelos Correios", options: ["Embalar o objeto em uma caixa de papelão firme", "Escrever os endereços do remetente e destinatário na caixa", "Levar a caixa até a agência para pesagem e cálculo do frete", "Pagar a taxa e pegar o comprovante com o código de rastreamento"], correctAnswer: "Embalar o objeto em uma caixa de papelão firme | Escrever os endereços do remetente e destinatário na caixa | Levar a caixa até a agência para pesagem e cálculo do frete | Pagar a taxa e pegar o comprovante com o código de rastreamento", explanation: "Envio postal: empacotar na caixa, escrever dados postais, pesar no balcão de atendimento, pagar e guardar o ticket de rastreio."),
            ExerciseItem(prompt: "Preparar um ovo frito", options: ["Acender o fogo e colocar óleo na frigideira para esquentar", "Quebrar a casca do ovo e colocá-lo na frigideira quente", "Temperar com sal e pimenta e fritar até a gema firmar", "Usar a espátula para retirar o ovo e colocá-lo no prato"], correctAnswer: "Acender o fogo e colocar óleo na frigideira para esquentar | Quebrar a casca do ovo e colocá-lo na frigideira quente | Temperar com sal e pimenta e fritar até a gema firmar | Usar a espátula para retirar o ovo e colocá-lo no prato", explanation: "Fritar ovo: aquecer óleo na frigideira, quebrar ovo, temperar sal/pimenta e fritar, remover com espátula para servir."),
            ExerciseItem(prompt: "Sacar dinheiro no caixa eletrônico (ATM)", options: ["Inserir o cartão do banco e digitar a senha PIN", "Selecionar a opção de saque e escolher o valor", "Pegar o dinheiro entregue pela máquina e conferir", "Retirar o cartão da máquina e guardar na carteira"], correctAnswer: "Inserir o cartão do banco e digitar a senha PIN | Selecionar a opção de saque e escolher o valor | Pegar o dinheiro entregue pela máquina e conferir | Retirar o cartão da máquina e guardar na carteira", explanation: "Saque em ATM: pôr cartão/senha, escolher saque/valor, receber e contar as cédulas, retirar e guardar o cartão."),
            ExerciseItem(prompt: "Lavar roupas na máquina de lavar", options: ["Separar as roupas sujas por cor e tipo e colocar no cesto", "Colocar sabão em pó e amaciante no compartimento indicado", "Selecionar o ciclo de lavagem ideal e iniciar", "Retirar as roupas lavadas e estender no varal para secar"], correctAnswer: "Separar as roupas sujas por cor e tipo e colocar no cesto | Colocar sabão em pó e amaciante no compartimento indicado | Selecionar o ciclo de lavagem ideal e iniciar | Retirar as roupas lavadas e estender no varal para secar", explanation: "Lavar roupas: triagem das peças e inserção na máquina, colocar insumos, iniciar o ciclo, pendurar no varal."),
            ExerciseItem(prompt: "Consulta médica no hospital", options: ["Ir à recepção apresentar documentos e pegar senha de atendimento", "Consultar o médico para explicar sintomas e passar por exames", "Dirigir-se ao caixa para faturamento e receber a receita médica", "Levar a receita até a farmácia e retirar os medicamentos"], correctAnswer: "Ir à recepção apresentar documentos e pegar senha de atendimento | Consultar o médico para explicar sintomas e passar por exames | Dirigir-se ao caixa para faturamento e receber a receita médica | Levar a receita até a farmácia e retirar os medicamentos", explanation: "Processo médico: recepção/senha, consulta de diagnóstico, guichê administrativo/receituário, obtenção dos remédios na farmácia."),
            ExerciseItem(prompt: "Tomar um comprimido", options: ["Checar a data de validade na embalagem do remédio", "Retirar a dose prescrita do comprimido da cartela", "Engolir o comprimido com um copo de água morna", "Guardar a embalagem do remédio na gaveta de medicamentos"], correctAnswer: "Checar a data de validade na embalagem do remédio | Retirar a dose prescrita do comprimido da cartela | Engolir o comprimido com um copo de água morna | Guardar a embalagem do remédio na gaveta de medicamentos", explanation: "Medicação segura: ver validade, retirar dose da embalagem, engolir com água, devolver cartela ao armário seguro."),
            ExerciseItem(prompt: "Carregar celular", options: ["Localizar o carregador e a tomada elétrica na sala", "Inserir a tomada do carregador no plugue de energia da parede", "Conectar o cabo de carregamento na entrada USB do aparelho", "Ao preencher a carga, remover o cabo do celular delicadamente"], correctAnswer: "Localizar o carregador e a tomada elétrica na sala | Inserir a tomada do carregador no plugue de energia da parede | Conectar o cabo de carregamento na entrada USB do aparelho | Ao preencher a carga, remover o cabo do celular delicadamente", explanation: "Carregar aparelho: achar carregador/tomada, plugar na parede, ligar cabo no celular, desplugar o fio ao terminar de carregar.")
        ]
    )

    // MARK: - Exercise 6: Causa e Efeito Avançado
    private static let exercise6 = Exercise(
        title: "Causa e Efeito Avançado",
        instructions: "Escolha a resposta que expressa o efeito ou causa mais lógico na situação dada.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .causeAndEffect,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Causa: A temperatura no verão ultrapassou os 42 graus Celsius.", options: ["O consumo de eletricidade disparou devido ao uso intenso de ar-condicionado", "As pessoas saíram em maior quantidade para passear na rua", "A venda de agasalhos de lã pesada cresceu muito nas lojas", "As usinas hidrelétricas relataram queda no consumo de eletricidade"], correctAnswer: "O consumo de eletricidade disparou devido ao uso intenso de ar-condicionado", explanation: "O calor excessivo exige o uso constante de climatizadores de ar, aumentando o consumo elétrico de forma imediata."),
            ExerciseItem(prompt: "Causa: O motorista ultrapassou o sinal vermelho correndo no cruzamento.", options: ["A polícia de trânsito o autuou aplicando-lhe multa severa", "Ele recebeu um prêmio de motorista modelo do ano da prefeitura", "Os outros veículos abriram caminho para ele de forma automática", "O semáforo ficou verde instantaneamente para ele passar"], correctAnswer: "A polícia de trânsito o autuou aplicando-lhe multa severa", explanation: "Avançar o sinal de trânsito fechado é infração gravíssima do código viário, gerando multa e perda de pontos na carteira."),
            ExerciseItem(prompt: "Causa: A rede de drenagem de esgoto da cidade entupiu com lixo e folhas de árvores.", options: ["As ruas ficaram alagadas após uma forte chuva de verão", "A água escoou de forma rápida para os rios próximos", "As avenidas continuaram secas e limpas", "O preço do galão de água mineral aumentou nas lojas"], correctAnswer: "As ruas ficaram alagadas após uma forte chuva de verão", explanation: "Sem vazão nas bocas de lobo entupidas, a água pluvial acumula-se sobre as pistas, provocando inundações e enchentes."),
            ExerciseItem(prompt: "Efeito: O estudante ficou extremamente alegre e comemorou com a família após o exame.", options: ["Causa: Ele obteve nota máxima e passou em primeiro lugar no vestibular", "Causa: Ele faltou no dia da prova devido a uma gripe severa", "Causa: Ele entregou o gabarito em branco sem responder a nenhuma questão", "Causa: A comissão organizadora adiou o vestibular por tempo indeterminado"], correctAnswer: "Causa: Ele obteve nota máxima e passou em primeiro lugar no vestibular", explanation: "Aprovação em posição de destaque na prova é a causa natural que motiva alegria no candidato."),
            ExerciseItem(prompt: "Efeito: A colheita de café foi abundante e gerou alto lucro aos produtores rurais.", options: ["Causa: O clima foi propício com chuvas nas épocas certas neste ano", "Causa: Ocorreu uma seca prolongada que afetou todas as plantações", "Causa: Os agricultores usaram defensivos agrícolas falsificados e vencidos", "Causa: Pragas de lagartas destruíram quase toda a área de plantio da fazenda"], correctAnswer: "Causa: O clima foi propício com chuvas nas épocas certas neste ano", explanation: "Clima chuvoso e ensolarado na proporção ideal estimula a produtividade cafeeira de alta qualidade."),
            ExerciseItem(prompt: "Causa: Os jovens passaram a noite inteira estudando para a prova final.", options: ["Sentiram fadiga e extrema dificuldade para acordar pela manhã", "Acordaram muito cedo e com bastante disposição", "A escola cancelou a aplicação da prova repentinamente naquele dia", "Sentiram a mente focada e muito ativa durante todo o exame"], correctAnswer: "Sentiram fadiga e extrema dificuldade para acordar pela manhã", explanation: "A privação de sono noturno diminui a energia vital, gerando cansaço e torpor matutino."),
            ExerciseItem(prompt: "Causa: A oferta de tomate nas feiras livres e mercados cresceu demais.", options: ["O preço do quilo de tomate teve queda expressiva na feira", "Não se conseguia mais comprar tomates no comércio local", "O valor do tomate atingiu a maior alta histórica", "O preço da batata disparou de valor de forma conjunta"], correctAnswer: "O preço do quilo de tomate teve queda expressiva na feira", explanation: "Segundo a lei de mercado, o excesso de oferta de hortifrúti barateia os custos ao consumidor final."),
            ExerciseItem(prompt: "Efeito: O bairro inteiro ficou sem luz e os elevadores dos prédios pararam.", options: ["Causa: O transformador de energia elétrica principal do bairro explodiu", "Causa: Era meio-dia e o sol brilhava forte no céu limpo", "Causa: Os moradores trocaram as lâmpadas normais por luzes LED em casa", "Causa: A administração do condomínio isentou o pagamento do condomínio no mês"], correctAnswer: "Causa: O transformador de energia elétrica principal do bairro explodiu", explanation: "A quebra ou explosão de transformadores interrompe a distribuição da rede de média tensão, provocando blecaute e paralisação de elevadores."),
            ExerciseItem(prompt: "Causa: O aposentado começou a praticar caminhadas matinais e ioga diariamente.", options: ["Seu condicionamento físico e bem-estar mental melhoraram muito", "Sua saúde ficou frágil e ele contraiu muitas infecções comuns", "Seu peso corporal aumentou vinte quilos em poucas semanas", "Ele perdeu o sono e passou a sofrer de insônia crônica à noite"], correctAnswer: "Seu condicionamento físico e bem-estar mental melhoraram muito", explanation: "Exercícios cardiovasculares associados ao alongamento de ioga promovem a vitalidade das juntas, circulação e ânimo."),
            ExerciseItem(prompt: "Causa: A prefeitura proibiu em lei a distribuição de sacolas plásticas descartáveis.", options: ["Os cidadãos passaram a levar sacolas retornáveis de pano às compras", "A quantidade de resíduos plásticos nas vias urbanas aumentou", "As indústrias petroquímicas duplicaram a produção de sacos plásticos", "Os lojistas distribuíram sacolas de plástico de forma gratuita e abundante"], correctAnswer: "Os cidadãos passaram a levar sacolas retornáveis de pano às compras", explanation: "Políticas públicas ecológicas que restringem materiais sintéticos induzem a adoção de sacolas reutilizáveis ecológicas."),
            ExerciseItem(prompt: "Efeito: O leite fresco deixado aberto na bancada azedou e coalhou.", options: ["Causa: O leite não foi guardado na geladeira, ficando sob calor ambiente", "Causa: O leite foi mantido bem resfriado no compartimento interno da geladeira", "Causa: Foi misturado uma colher de açúcar refinado no copo de leite", "Causa: O leite foi recolhido fresco da fazenda leiteira na mesma manhã"], correctAnswer: "Causa: O leite não foi guardado na geladeira, ficando sob calor ambiente", explanation: "Bactérias lácticas se multiplicam com calor, consumindo a lactose e gerando ácido láctico que talha o leite."),
            ExerciseItem(prompt: "Causa: O vendaval destruiu plantações de feijão no sul do país no ano passado.", options: ["O preço de venda do feijão no mercado interno encareceu bastante", "Sobrou feijão nas gôndolas forçando o governo a baixar os preços", "A colheita recorde permitiu exportar mais sacas de feijão", "Os consumidores pararam de comer feijão e consumiram apenas massas"], correctAnswer: "O preço de venda do feijão no mercado interno encareceu bastante", explanation: "A perda das lavouras encolhe a safra nacional de grãos, reduzindo a oferta interna e subindo o preço final."),
            ExerciseItem(prompt: "Efeito: A tela do celular apagou de repente e o aparelho desligou sozinho.", options: ["Causa: O usuário assistiu a vídeos em alta resolução sem plugar na carga", "Causa: O celular ficou conectado ao carregador original na tomada a noite toda", "Causa: O aparelho foi mantido desligado dentro da gaveta por vários dias", "Causa: O usuário limpou os apps em segundo plano e ligou a economia de energia"], correctAnswer: "Causa: O usuário assistiu a vídeos em alta resolução sem plugar na carga", explanation: "O processamento de vídeos online via Wi-Fi ou dados consome muita amperagem da bateria, provocando descarga rápida."),
            ExerciseItem(prompt: "Causa: O candidato foi pego tentando colar usando anotações ocultas na prova.", options: ["O fiscal de sala o retirou do recinto desclassificando-o do concurso", "Ele foi nomeado representante de turma e obteve bolsa de estudos", "A banca examinadora parabenizou o candidato pelo raciocínio rápido", "Os concorrentes na sala aplaudiram sua atitude audaz"], correctAnswer: "O fiscal de sala o retirou do recinto desclassificando-o do concurso", explanation: "Tentar trapacear em certame público com papéis de cola gera expulsão e nulidade da inscrição no ato."),
            ExerciseItem(prompt: "Efeito: Dois carros colidiram de frente danificando gravemente os motores.", options: ["Causa: A névoa espessa da manhã reduziu a visibilidade das pistas ao mínimo", "Causa: Ambos os veículos estavam estacionados trancados na garagem de casa", "Causa: O tempo estava ensolarado com visibilidade excelente e pista seca", "Causa: Ambos os motoristas dirigiam na velocidade regulamentar com segurança"], correctAnswer: "Causa: A névoa espessa da manhã reduziu a visibilidade das pistas ao mínimo", explanation: "A forte névoa matinal (neblina) oculta obstáculos e trajetórias de carros vindo na contramão, causando batidas frontais.")
        ]
    )

    // MARK: - Exercise 7: Absurdos Lógicos
    private static let exercise7 = Exercise(
        title: "Absurdos Lógicos",
        instructions: "Identifique a afirmação que demonstra a impossibilidade ou contradição lógica na narrativa.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: .whatsWrongHere,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "O cozinheiro ferveu o leite gelado na panela totalmente fria e sem ligar o fogo ou usar eletricidade.", options: ["Sem fonte térmica de calor é impossível esquentar ou ferver qualquer líquido", "A panela de leite não pode receber grãos de arroz cru", "O leite fervente congela instantaneamente em temperatura ambiente", "Para esquentar água deve-se usar uma garrafa plástica fechada"], correctAnswer: "Sem fonte térmica de calor é impossível esquentar ou ferver qualquer líquido", explanation: "Fervura exige atingir o ponto de ebulição via absorção de calor; sem fogo/eletricidade nada aquece."),
            ExerciseItem(prompt: "Na escuridão total da meia-noite após o pôr do sol, sem lâmpadas, Alice colheu rosas vermelhas no jardim.", options: ["No escuro completo sem luz é impossível distinguir e identificar as cores", "As rosas vermelhas mudam de cor para branco no escuro automaticamente", "Colher rosas à noite exige o uso de tesouras metálicas especiais", "Flores colhidas à noite perdem todo o aroma característico"], correctAnswer: "No escuro completo sem luz é impossível distinguir e identificar as cores", explanation: "Os fotorreceptores dos olhos dependem de fótons de luz refletidos para processar cores; no breu total, tudo parece escuro."),
            ExerciseItem(prompt: "O oleiro usou areia completamente seca para moldar um vaso e colocou o vaso na água fria para secá-lo.", options: ["Areia seca não liga para moldar cerâmica e a água impede a secagem do barro", "Objetos de barro só podem ser esculpidos por ourives e ferreiros", "A areia de rio vira ouro puro se deixada imersa em água por muito tempo", "Para secar argila deve-se colocá-la no forno micro-ondas"], correctAnswer: "Areia seca não liga para moldar cerâmica e a água impede a secagem do barro", explanation: "Modelar exige argila úmida com plasticidade; e secar é um processo de desidratação (a água líquida dissolveria o barro)."),
            ExerciseItem(prompt: "Sob sol escaldante de 40 graus no verão, ele vestiu um casaco de lã grosso e sentou em um bloco de gelo para tomar sol.", options: ["Vestir roupas de inverno e sentar no gelo para tomar sol sob forte calor é contraditório", "O gelo nunca derrete mesmo em temperaturas elevadas de verão", "O casaco de lã serve apenas para flutuar nas águas do mar", "Para se proteger do calor deve-se beber copos de sal concentrado"], correctAnswer: "Vestir roupas de inverno e sentar no gelo para tomar sol sob forte calor é contraditório", explanation: "Usar agasalho de lã sob o sol impede a dissipação do calor do corpo levando à hipertermia, e o gelo resfria de forma brusca."),
            ExerciseItem(prompt: "O agricultor espalhou sementes de feijão sobre o asfalto da rodovia esperando colher uma grande safra.", options: ["A pista de asfalto não possui terra cultivável e água para o feijão brotar e enraizar", "Nas estradas federais só se pode plantar mudas de laranjeiras", "Plantar grãos de feijão só pode ser feito sobre lagos congelados no inverno", "O asfalto de concreto possui adubo natural superior à terra comum"], correctAnswer: "A pista de asfalto não possui terra cultivável e água para o feijão brotar e enraizar", explanation: "Sementes precisam de solo permeável, úmido e nutrientes para eclodirem e desenvolverem raízes; o asfalto é impermeável e seco."),
            ExerciseItem(prompt: "O peixe saltou do aquário, correu com suas pernas velozes pelo gramado e subiu no galho da árvore fugindo do gato.", options: ["O peixe não tem pernas para correr, nem pulmões para respirar na terra", "Gatos têm medo de subir em árvores altas para caçar", "Os peixes são seres aéreos que voam nos céus junto às aves", "As escamas do peixe se inflamam devido ao atrito com a grama seca"], correctAnswer: "O peixe não tem pernas para correr, nem pulmões para respirar na terra", explanation: "Peixes realizam troca gasosa por brânquias na água e nadam com nadadeiras; não possuem membros locomotores terrestres."),
            ExerciseItem(prompt: "O jovem desligou o celular completamente e ligou para a sua mãe, conversando por duas horas seguidas.", options: ["Um celular desligado não tem energia e sinal ativo para efetuar chamadas", "Falar com a mãe exige o uso exclusivo de aparelhos de telefone fixo", "O celular desligado envia mensagens SMS de forma automática", "As ligações só funcionam se houver fone de ouvido conectado"], correctAnswer: "Um celular desligado não tem energia e sinal ativo para efetuar chamadas", explanation: "Com o aparelho desligado, a bateria não alimenta os circuitos de transmissão e recepção de dados celulares da antena."),
            ExerciseItem(prompt: "Para fazer as roupas molhadas secarem bem rápido, ela colocou todas as peças dentro de um balde cheio de água fria.", options: ["Mergulhar roupas na água aumenta a umidade e impede a evaporação da água", "Roupas molhadas só secam se penduradas em armários totalmente fechados", "A água fria causa a destruição imediata das fibras de poliéster", "O processo de secagem necessita de aditivo químico dessecante nano"], correctAnswer: "Mergulhar roupas na água aumenta a umidade e impede a evaporação da água", explanation: "Secagem requer evaporação do líquido; colocá-las em um balde d'água encharca as fibras têxteis ainda mais."),
            ExerciseItem(prompt: "O motorista do ônibus freou bruscamente pisando fundo no acelerador para evitar colidir na curva.", options: ["O acelerador aumenta o giro do motor gerando velocidade e não atua na frenagem", "O veículo diminui a marcha se o volante for girado em zigue-zague", "O pedal de freio fica posicionado sob o lado do passageiro em veículos grandes", "Acelerar fundo causa a evaporação do óleo diesel no motor"], correctAnswer: "O acelerador aumenta o giro do motor gerando velocidade e não atua na frenagem", explanation: "Para frear e reduzir a inércia do veículo usa-se o pedal de freio; o acelerador injeta mais combustível no motor."),
            ExerciseItem(prompt: "As gaivotas mergulharam a cem metros no oceano e teceram um ninho de gravetos secos na água para chocar seus ovos.", options: ["A gaivota respira ar nos pulmões e o ninho seria desfeito pelas correntes marinhas", "A gaivota põe ovos flutuantes nas nuvens do céu", "A água nas profundezas marinhas ferve a mais de cem graus sempre", "As penas das aves entram em combustão espontânea sob a água do mar"], correctAnswer: "A gaivota respira ar nos pulmões e o ninho seria desfeito pelas correntes marinhas", explanation: "Gaivotas têm pulmões e morreriam afogadas na profundidade; gravetos flutuam e se espalham com as correntes marinhas, e ovos estragariam na água."),
            ExerciseItem(prompt: "Ele provou a sopa de legumes fervendo no fogão e disse que estava fria como gelo.", options: ["A sopa fervente está em temperatura muito alta e queima a boca, não sendo fria", "A sopa de legumes exige colher de metal para sentirmos o calor correto", "O alimento quente demais anula permanentemente o paladar da língua", "Líquidos ferventes solidificam-se em gelo no momento em que o fogo é desligado"], correctAnswer: "A sopa fervente está em temperatura muito alta e queima a boca, não sendo fria", explanation: "A sopa fervente atinge cerca de 100 graus centígrados; tocá-la ou prová-la causa queimaduras na mucosa oral."),
            ExerciseItem(prompt: "Para trancar a porta de sua residência, o pai jogou a chave pelo visor do olho mágico para fora.", options: ["Trancar exige inserir a chave no tambor e girar os pinos, não arremessá-la longe", "O olho mágico do portal é lacrado impedindo a passagem de objetos metálicos", "Portas de madeira devem ser trancadas apenas com grandes travas de bambu", "Portas blindadas só trancam com sensor biométrico de retina"], correctAnswer: "Trancar exige inserir a chave no tambor e girar os pinos, não arremessá-la longe", explanation: "A fechadura mecânica necessita que a chave entre no cilindro para girar os trincos de metal; arremessar a chave inviabiliza a ação."),
            ExerciseItem(prompt: "O deficiente visual pegou o telescópio e descreveu as flores vermelhas que cresciam na colina distante.", options: ["O cego não possui capacidade visual para processar imagens do telescópio", "O telescópio serve apenas para astronautas verem outros planetas no espaço", "Nas colinas distantes apenas crescem cactos e espinhos de cerrado", "O telescópio perde toda a função de zoom durante o dia claro"], correctAnswer: "O cego não possui capacidade visual para processar imagens do telescópio", explanation: "A cegueira indica a perda da função do nervo óptico ou retina; lentes de aproximação não corrigem a falta de recepção nervosa."),
            ExerciseItem(prompt: "O ponteiro de segundos do relógio começou a girar ao contrário, fazendo a data do calendário voltar para ontem.", options: ["O relógio é apenas um medidor e girar seus ponteiros não altera a dimensão do tempo", "O ponteiro girando para trás explode as pilhas alcalinas na hora", "O tempo corre mais veloz quando viajamos em foguetes espaciais no vácuo", "Os ponteiros funcionam com bobinas eletromagnéticas que impedem o retrocesso"], correctAnswer: "O relógio é apenas um medidor e girar seus ponteiros não altera a dimensão do tempo", explanation: "O tempo flui adiante conforme as leis da física; alterar as engrenagens de um relógio de parede não afeta o fluxo temporal real."),
            ExerciseItem(prompt: "Ela escreveu no caderno de papel totalmente molhado com uma caneta esferográfica seca, obtendo uma escrita muito limpa.", options: ["O papel molhado rasga com facilidade e a tinta da caneta borra em contato com a água", "O papel úmido só aceita traços se pincelado com tinta guache à base de óleo", "Canetas esferográficas só riscam sobre placas de ouro polido", "A umidade da celulose evapora instantaneamente com o calor do atrito"], correctAnswer: "O papel molhado rasga com facilidade e a tinta da caneta borra em contato com a água", explanation: "A água enfraquece as fibras de papel tornando-o frágil sob o atrito da ponta de metal da caneta, e a tinta borra e se dissolve.")
        ]
    )

    // MARK: - Exercise 8: Provérbios e Ditados Populares
    private static let exercise8 = Exercise(
        title: "Provérbios e Ditados Populares",
        instructions: "Escolha a palavra que completa corretamente o ditado popular português.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: .completeTheSaying,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Complete o ditado: Água mole em pedra dura, tanto bate até que ___.", options: ["fura", "quebra", "racha", "amacia"], correctAnswer: "fura", explanation: "O provérbio é 'Água mole em pedra dura, tanto bate até que fura', exortando à persistência diante das barreiras."),
            ExerciseItem(prompt: "Complete o ditado: De grão em grão, a galinha enche o ___.", options: ["papo", "saco", "bico", "estômago"], correctAnswer: "papo", explanation: "O provérbio é 'De grão em grão, a galinha enche o papo', mostrando que pequenos acúmulos geram grandes resultados."),
            ExerciseItem(prompt: "Complete o ditado: Mais vale um pássaro na mão do que dois ___.", options: ["voando", "no ninho", "cantando", "fugindo"], correctAnswer: "voando", explanation: "O provérbio é 'Mais vale um pássaro na mão do que dois voando', aconselhando a preferir a segurança ao risco."),
            ExerciseItem(prompt: "Complete o ditado: Não deixe para amanhã o que você pode fazer ___.", options: ["hoje", "agora", "já", "cedo"], correctAnswer: "hoje", explanation: "O provérbio é 'Não deixe para amanhã o que você pode fazer hoje', combatendo a procrastinação de tarefas."),
            ExerciseItem(prompt: "Complete o ditado: Filho de peixe, peixinho ___.", options: ["é", "será", "nada", "parece"], correctAnswer: "é", explanation: "O ditado é 'Filho de peixe, peixinho é', indicando semelhança de traços e hábitos de pais para filhos."),
            ExerciseItem(prompt: "Complete o ditado: Quem não tem cão, caça com ___.", options: ["gato", "rato", "lobo", "coelho"], correctAnswer: "gato", explanation: "O ditado é 'Quem não tem cão, caça com gato', significando improvisar com o que se tem disponível."),
            ExerciseItem(prompt: "Complete o ditado: Cão que ladra não ___.", options: ["morde", "corre", "late", "pega"], correctAnswer: "morde", explanation: "O provérbio é 'Cão que ladra não muerde' (ou morde), aplicando-se a quem muito ameaça, mas pouca ação tem."),
            ExerciseItem(prompt: "Complete o ditado: A cavalo dado não se olha o ___.", options: ["dente", "pelo", "casco", "olho"], correctAnswer: "dente", explanation: "O provérbio é 'A cavalo dado não se olha o dente', ensinando a aceitar presentes sem buscar defeitos neles."),
            ExerciseItem(prompt: "Complete o ditado: Deus ajuda quem cedo ___.", options: ["madruga", "acorda", "trabalha", "corre"], correctAnswer: "madruga", explanation: "O provérbio é 'Deus ajuda quem cedo madruga', valorizando o esforço precoce e a dedicação diária."),
            ExerciseItem(prompt: "Complete o ditado: Cada macaco no seu ___.", options: ["galho", "árvore", "ninho", "posto"], correctAnswer: "galho", explanation: "O ditado é 'Cada macaco no seu galho', expressando que cada pessoa deve se ater ao seu próprio papel ou assunto de direito."),
            ExerciseItem(prompt: "Complete o ditado: Quem com ferro fere, com ferro será ___.", options: ["ferido", "curado", "morto", "pago"], correctAnswer: "ferido", explanation: "O provérbio é 'Quem com ferro fere, com ferro será ferido', indicando que as ações negativas voltam-se contra quem as pratica."),
            ExerciseItem(prompt: "Complete o ditado: Nem tudo o que reluz é ___.", options: ["ouro", "prata", "joia", "diamante"], correctAnswer: "ouro", explanation: "O provérbio é 'Nem tudo o que reluz é ouro', alertando sobre as aparências superficiais e enganosas das coisas."),
            ExerciseItem(prompt: "Complete o ditado: Antes só do que mal ___.", options: ["acompanhado", "casado", "visto", "tratado"], correctAnswer: "acompanhado", explanation: "O ditado popular é 'Antes só do que mal acompanhado', incentivando a escolher bem as companhias."),
            ExerciseItem(prompt: "Complete o ditado: A pressa é inimiga da ___.", options: ["perfeição", "rapidez", "calma", "velocidade"], correctAnswer: "perfeição", explanation: "O ditado é 'A pressa é inimiga da perfeição', ensinando que realizar tarefas correndo compromete a qualidade final."),
            ExerciseItem(prompt: "Complete o ditado: A união faz a ___.", options: ["força", "vontade", "paz", "vitória"], correctAnswer: "força", explanation: "O provérbio é 'A união faz a força', ressaltando o poder do esforço conjunto para o sucesso.")
        ]
    )

    // MARK: - Easy Homonyms
    private static let easyHomonyms = Exercise(
        title: "Homófonos Fáceis",
        instructions: "Escolha a palavra correta para completar as frases.",
        section: .language,
        type: .homonym,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "[sem / cem] Comprei um bolo ___ açúcar. O número ___ vem depois de noventa e nove.", options: ["sem...cem", "cem...sem", "sem...sem", "cem...cem"], correctAnswer: "sem...cem", explanation: "'Sem' indica falta de algo; 'cem' é o número 100."),
            ExerciseItem(prompt: "[noz / nós] O esquilo comeu uma ___ saborosa. ___ vamos ao parque hoje.", options: ["noz...nós", "nós...noz", "noz...noz", "nós...nós"], correctAnswer: "noz...nós", explanation: "'Noz' é um fruto seco; 'nós' é o pronome da primeira pessoa do plural."),
            ExerciseItem(prompt: "[cinto / sinto] Eu afivelei o ___ nas calças. Eu ___ muita alegria hoje.", options: ["cinto...sinto", "sinto...cinto", "cinto...cinto", "sinto...sinto"], correctAnswer: "cinto...sinto", explanation: "'Cinto' é o acessório para calças; 'sinto' é o verbo sentir."),
            ExerciseItem(prompt: "[cela / sela] O prisioneiro ficou na ___ escura. O cavaleiro colocou a ___ no cavalo.", options: ["cela...sela", "sela...cela", "cela...cela", "sela...sela"], correctAnswer: "cela...sela", explanation: "'Cela' é o quarto de prisão; 'sela' é o assento do cavalo."),
            ExerciseItem(prompt: "[rio / rio] O ___ tem muita água e peixes. Eu ___ quando ouço uma piada.", options: ["rio...rio", "rio...mar", "mar...rio", "rio...lago"], correctAnswer: "rio...rio", explanation: "'Rio' é o fluxo de água; 'rio' é também a conjugação do verbo rir."),
            ExerciseItem(prompt: "[traz / trás] O carteiro ___ as cartas todos os dias. O brinquedo está por ___ do sofá.", options: ["traz...trás", "trás...traz", "traz...traz", "trás...trás"], correctAnswer: "traz...trás", explanation: "'Traz' é do verbo trazer; 'trás' indica a parte traseira de algo."),
            ExerciseItem(prompt: "[manga / manga] Comi uma ___ doce e amarela. A ___ da minha camisa rasgou.", options: ["manga...manga", "manga...fruta", "fruta...manga", "manga...roupa"], correctAnswer: "manga...manga", explanation: "'Manga' pode ser a fruta tropical ou a parte da roupa que cobre o braço."),
            ExerciseItem(prompt: "[são / são] Eles ___ muito amigos. O patiente está forte e ___.", options: ["são...são", "são...estão", "estão...são", "são...são"], correctAnswer: "são...são", explanation: "'São' é a forma do verbo ser e também significa saudável/sio."),
            ExerciseItem(prompt: "[cauda / calda] O cão abana a sua ___. O sorvete tem ___ de chocolate.", options: ["cauda...calda", "calda...cauda", "cauda...cauda", "calda...calda"], correctAnswer: "cauda...calda", explanation: "'Cauda' é o rabo do animal; 'calda' é o xarope doce usado em sobremesas."),
            ExerciseItem(prompt: "[canto / canto] Coloquei a cadeira no ___ da sala. Eu ___ no coral da igreja.", options: ["canto...canto", "canto...falo", "falo...canto", "canto...canto"], correctAnswer: "canto...canto", explanation: "'Canto' é a esquina da parede; 'canto' é também do verbo cantar."),
            ExerciseItem(prompt: "[conserto / concerto] O mecânico fez o ___ do carro. Fomos assistir ao ___ de música.", options: ["conserto...concerto", "concerto...conserto", "conserto...conserto", "concerto...concerto"], correctAnswer: "conserto...concerto", explanation: "'Conserto' significa reparação; 'concerto' é uma apresentação musical."),
            ExerciseItem(prompt: "[cozer / coser] Vou ___ os legumes para o almoço. Minha avó vai ___ a camisa rasgada.", options: ["cozer...coser", "coser...cozer", "cozer...cozer", "coser...coser"], correctAnswer: "cozer...coser", explanation: "'Cozer' significa cozinhar; 'coser' significa costurar com agulha e linha."),
            ExerciseItem(prompt: "[aço / asso] A faca é feita de ___ forte. Eu ___ um bolo de chocolate hoje.", options: ["aço...asso", "asso...aço", "aço...aço", "asso...asso"], correctAnswer: "aço...asso", explanation: "'Aço' é a liga metálica resistente; 'asso' é do verbo assar no forno."),
            ExerciseItem(prompt: "[viagem / viajem] A ___ de férias foi muito divertida. Espero que eles ___ amanhã.", options: ["viagem...viajem", "viajem...viagem", "viagem...viagem", "viajem...viajem"], correctAnswer: "viagem...viajem", explanation: "'Viagem' é o substantivo (a jornada); 'viajem' é a forma verbal do verbo viajar."),
            ExerciseItem(prompt: "[paço / passo] O rei mora no ___ imperial. Dei um ___ à frente.", options: ["paço...passo", "passo...paço", "paço...paço", "passo...passo"], correctAnswer: "paço...passo", explanation: "'Paço' é o palácio real; 'passo' é o movimento de caminhar.")
        ]
    )

    // MARK: - Easy Analogies
    private static let easyAnalogies = Exercise(
        title: "Analogias Simples",
        instructions: "Escolha a palavra que melhor completa a analogia.",
        section: .language,
        type: .analogyChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "ALTO está para BAIXO assim como QUENTE está para FRIO", options: ["FRIO", "MORNO", "FERVENDO", "MOLHADO"], correctAnswer: "FRIO", explanation: "Alto e baixo são opostos, assim como quente e frio."),
            ExerciseItem(prompt: "PÁSSARO está para VOAR assim como PEIXE está para NADAR", options: ["NADAR", "CORRER", "CAMINHAR", "SALTAR"], correctAnswer: "NADAR", explanation: "Um pássaro se move voando, e um peixe nadando."),
            ExerciseItem(prompt: "GATO está para GATINHO assim como CACHORRO está para FILHOTE", options: ["FILHOTE", "GATINHO", "BEZERRO", "POTRO"], correctAnswer: "FILHOTE", explanation: "Gatinho é o filhote do gato, e filhote é o filhote do cachorro."),
            ExerciseItem(prompt: "DIA está para SOL assim como NOITE está para LUA", options: ["LUA", "CHUVA", "VENTO", "NUVEM"], correctAnswer: "LUA", explanation: "O sol brilha durante o dia e a lua à noite."),
            ExerciseItem(prompt: "GELO está para FRIO assim como FOGO está para QUENTE", options: ["QUENTE", "MOLHADO", "ESCURO", "MACIO"], correctAnswer: "QUENTE", explanation: "O gelo é frio ao toque, enquanto o fogo é quente."),
            ExerciseItem(prompt: "CANETA está para ESCREVER assim como TESOURA está para CORTAR", options: ["CORTAR", "COLAR", "DESENHAR", "PINTAR"], correctAnswer: "CORTAR", explanation: "A caneta é usada para escrever, e a tesoura para cortar."),
            ExerciseItem(prompt: "ÁRVORE está para FOLHA assim como FLOR está para PÉTALA", options: ["PÉTALA", "ESPINHO", "RAIZ", "CAULE"], correctAnswer: "PÉTALA", explanation: "A folha faz parte da árvore, e a pétala faz parte da flor."),
            ExerciseItem(prompt: "CARRO está para ESTRADA assim como BARCO está para ÁGUA", options: ["AGUA", "AR", "TERRA", "TRILHO"], correctAnswer: "AGUA", explanation: "Um carro viaja na estrada, enquanto um barco viaja na água."),
            ExerciseItem(prompt: "MEIA está para PÉ assim como LUVA está para MÃO", options: ["MÃO", "CABEÇA", "PESCOÇO", "BRAÇO"], correctAnswer: "MÃO", explanation: "A meia é usada no pé, e a luva na mão."),
            ExerciseItem(prompt: "FOME está para COMIDA assim como SEDE está para ÁGUA", options: ["ÁGUA", "PÃO", "FRUTA", "SAL"], correctAnswer: "ÁGUA", explanation: "Quando se tem fome precisa de comida, e quando se tem sede de água."),
            ExerciseItem(prompt: "SAPATO está para PÉ assim como CHAPÉU está para CABEÇA", options: ["CABEÇA", "MÃO", "PERNA", "PESCOÇO"], correctAnswer: "CABEÇA", explanation: "O sapato é usado no pé, e o chapéu na cabeça."),
            ExerciseItem(prompt: "MAÇÃ está para FRUTA assim como CENOURA está para VEGETAL", options: ["VEGETAL", "CARNE", "GRÃO", "LATICÍNIO"], correctAnswer: "VEGETAL", explanation: "A maçã é um tipo de fruta, enquanto a cenoura é um vegetal."),
            ExerciseItem(prompt: "VACA está para LEITE assim como ABELHA está para MEL", options: ["MEL", "CERA", "PÓLEN", "ÁGUA"], correctAnswer: "MEL", explanation: "A vaca produz leite, e a abelha produz mel."),
            ExerciseItem(prompt: "DENTES está para ESCOVA assim como CABELO está para PENTE", options: ["PENTE", "LAVAR", "CORTAR", "SECAR"], correctAnswer: "PENTE", explanation: "Escovamos os dentes para limpar, e penteamos o cabelo para arrumar."),
            ExerciseItem(prompt: "CHUVA está para MOLHADO assim como SOL está para SECO", options: ["SECO", "FRIO", "ESCURO", "VENTOSO"], correctAnswer: "SECO", explanation: "A chuva molha as coisas, enquanto o sol as seca.")
        ]
    )

    // MARK: - Easy Cause and Effect
    private static let easyCauseEffect = Exercise(
        title: "Causa e Efeito Simples",
        instructions: "Escolha a opção que representa a causa ou efeito mais lógico.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Causa: Você deixa cair um copo de vidro no chão de concreto.", options: ["O copo quebra", "O copo flutua", "O copo fica macio", "O copo fica azul"], correctAnswer: "O copo quebra", explanation: "O vidro é frágil e quebra quando cai em uma superfície dura."),
            ExerciseItem(prompt: "Causa: Você esquece de regar uma planta por uma semana.", options: ["Ela murcha e seca", "Ela dá flores", "Ela fica roxa", "Ela produz frutos"], correctAnswer: "Ela murcha e seca", explanation: "As plantas precisam de água para viver; sem ela, murcham e secam."),
            ExerciseItem(prompt: "Causa: Você deixa um cubo de gelo na mesa da cozinha no verão.", options: ["Ele derrete", "Ele fica maior", "Ele vira madeira", "Ele continua congelado"], correctAnswer: "Ele derrete", explanation: "O calor do ambiente faz o gelo passar do estado sólido para o líquido."),
            ExerciseItem(prompt: "Causa: Você sopra um balão com ar demais.", options: ["Ele estoura", "Ele vira pedra", "Ele canta", "Ele fica pesado"], correctAnswer: "Ele estoura", explanation: "Colocar ar demais no balão excede a elasticidade da borracha, fazendo-o estourar."),
            ExerciseItem(prompt: "Causa: Você aperta o interruptor de luz na parede.", options: ["A luz acende", "O quarto fica frio", "A porta tranca", "O relógio para"], correctAnswer: "A luz acende", explanation: "Apertar o interruptor completa o circuito elétrico, acendendo a lâmpada."),
            ExerciseItem(prompt: "Causa: Você passa a noite inteira sem dormir.", options: ["Fica muito cansado no dia seguinte", "Fica com muita energia", "O cabelo fica branco", "Você fica mais alto"], correctAnswer: "Fica muito cansado no dia seguinte", explanation: "O sono é necessário para descansar; a falta dele causa fadiga no dia seguinte."),
            ExerciseItem(prompt: "Causa: Você fica na chuva forte sem guarda-chuva.", options: ["Você fica molhado", "Você fica seco", "Você flutua", "Você pega fogo"], correctAnswer: "Você fica molhado", explanation: "A chuva é água caindo do céu; ficar nela sem proteção molha o corpo."),
            ExerciseItem(prompt: "Causa: Você coloca o pão na torradeira e abaixa a alavanca.", options: ["O pão fica tostado", "O pão vira farinha", "O pão derrete", "O pão fica úmido"], correctAnswer: "O pão fica tostado", explanation: "A torradeira aquece e doura o pão, tornando-o tostado."),
            ExerciseItem(prompt: "Causa: Você deixa o leite fora da geladeira por três dias no calor.", options: ["Ele azeda e estraga", "Ele fica mais doce", "Ele congela", "Ele vira mel"], correctAnswer: "Ele azeda e estraga", explanation: "O calor acelera a proliferação de bactérias, fazendo o leite azedar."),
            ExerciseItem(prompt: "Causa: Você sopra uma vela acesa com força.", options: ["A chama se apaga", "A chama cresce", "A vela derrete na hora", "A vela fica azul"], correctAnswer: "A chama se apaga", explanation: "O sopro afasta o oxigênio e o calor da chama, apagando o fogo."),
            ExerciseItem(prompt: "Causa: Você coloca uma panela com água no fogo alto.", options: ["A água ferve", "A água congela", "A água some na hora", "A panela cresce"], correctAnswer: "A água ferve", explanation: "O calor do fogão eleva a temperatura da água até o ponto de ebulição."),
            ExerciseItem(prompt: "Causa: Você pisa em um prego afiado descalço.", options: ["Seu pé se machuca", "Seus sapatos sujam", "Você pula mais alto", "Seu pé fica verde"], correctAnswer: "Seu pé se machuca", explanation: "Pisar em um objeto pontiagudo perfura a pele e causa ferimentos."),
            ExerciseItem(prompt: "Causa: Você adiciona açúcar ao café preto amargo.", options: ["O café fica doce", "O café fica frio", "O café desaparece", "O café fica salgado"], correctAnswer: "O café fica doce", explanation: "O açúcar adoça a bebida, mascarando o sabor amargo do café."),
            ExerciseItem(prompt: "Causa: Você joga uma bola de tênis contra uma parede de tijolos.", options: ["A bola rebate de volta", "A bola atravessa a parede", "A parede cai", "A bola derrete"], correctAnswer: "A bola rebate de volta", explanation: "A bola de tênis é elástica e, ao colidir com uma parede rígida, retorna."),
            ExerciseItem(prompt: "Causa: Você não estuda nada para uma prova importante.", options: ["Você tira nota baixa", "Você tira nota máxima", "A escola fecha", "Você se forma mais cedo"], correctAnswer: "Você tira nota baixa", explanation: "Sem preparação ou estudo, a probabilidade de responder corretamente é baixa.")
        ]
    )

    // MARK: - Easy What's Wrong Here
    private static let easyWhatsWrong = Exercise(
        title: "Absurdos Simples",
        instructions: "Identifique o erro lógico ou impossibilidade na frase.",
        section: .cognition,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Absurdo: O João calçou os sapatos antes das meias.", options: ["As meias devem ser calçadas antes dos sapatos", "Os sapatos devem ser colocados nas mãos", "As meias são usadas na cabeça", "Os sapatos devem ser comidos"], correctAnswer: "As meias devem ser calçadas antes dos sapatos", explanation: "As meias ficam dentro dos sapatos, por isso devem ser calçadas primeiro."),
            ExerciseItem(prompt: "Absurdo: Ela usou um garfo para tomar a sopa de galinha quente.", options: ["A sopa é líquida e exige colher", "A sopa deve ser comida com os dedos", "O garfo serve para cortar bife", "A sopa deve ser cozida no copo"], correctAnswer: "A sopa é líquida e exige colher", explanation: "Líquidos escorrem pelos dentes do garfo; é preciso usar uma colher."),
            ExerciseItem(prompt: "Absurdo: O peixe subiu na árvore para fazer um ninho.", options: ["Peixes vivem na água e não sobem em árvores", "As árvores não têm galhos", "Peixes fazem ninhos no telhado", "Os peixes voam no ar"], correctAnswer: "Peixes vivem na água e não sobem em árvores", explanation: "Peixes respiram por brânquias e não têm membros para escalar árvores."),
            ExerciseItem(prompt: "Absurdo: Ele vestiu um casaco pesado de inverno para nadar na piscina.", options: ["Usa-se roupa de banho para nadar, não casacos", "Casacos pesados fazem você nadar mais rápido", "A piscina deve estar cheia de gelo", "Casacos de inverno só servem para o verão"], correctAnswer: "Usa-se roupa de banho para nadar, não casacos", explanation: "Casacos de inverno absorvem água e ficam pesados, dificultando o nado."),
            ExerciseItem(prompt: "Absurdo: Eles cozinharam um ovo cru dentro do freezer.", options: ["Freezers congelam; fogões cozinham", "Ovos só devem ser comidos crus", "O freezer serve para ferver água", "Ovos cozinham melhor no micro-ondas"], correctAnswer: "Freezers congelam; fogões cozinham", explanation: "Cozinhar exige calor; o freezer mantém a temperatura abaixo de zero."),
            ExerciseItem(prompt: "Absurdo: O cachorro abriu o livro e começou a ler em voz alta.", options: ["Cachorros não leem nem falam línguas humanas", "Cachorros só leem jornais", "Livros devem ser lidos em silêncio", "Cachorros preferem escrever livros"], correctAnswer: "Cachorros não leem nem falam línguas humanas", explanation: "Cães não têm a capacidade de falar ou ler w wika humana."),
            ExerciseItem(prompt: "Absurdo: Ela cortou o bolo de aniversário com uma colher de sopa.", options: ["Usa-se faca para cortar bolo, não colher", "Bolos devem ser comidos com as mãos", "Colheres servem apenas para sopa", "Bolos devem ser cortados com tesoura"], correctAnswer: "Usa-se faca para cortar bolo, não colher", explanation: "Faca tem corte preciso para fatiar bolo; colheres são para líquidos."),
            ExerciseItem(prompt: "Absurdo: Ele usou um lápis de madeira para digitar no celular.", options: ["Telas de celular usam dedos ou canetas especiais", "Lápis só funcionam no vidro", "Celulares só aceitam comandos de voz", "O lápis é muito curto para digitar"], correctAnswer: "Telas de celular usam dedos ou canetas especiais", explanation: "Telas capacitivas exigem o contato da pele ou de canetas stylus adequadas."),
            ExerciseItem(prompt: "Absurdo: O avião navegou sobre as águas profundas do oceano.", options: ["Aviões voam no ar; navios navegam na água", "A água do mar é sempre verde", "Aviões só andam na terra", "Navios voam no céu"], correctAnswer: "Aviões voam no ar; navios navegam na água", explanation: "Aviões voam na atmosfera; navios são os veículos que navegam na água."),
            ExerciseItem(prompt: "Absurdo: Ela abriu o guarda-chuva dentro da sala seca de casa.", options: ["Guarda-chuvas são para chuva ou sol na rua", "Salas de estar devem ter poças de chuva", "Guarda-chuvas são apenas para o inverno", "Ela deveria usar capa de chuva dentro de casa"], correctAnswer: "Guarda-chuvas são para chuva ou sol na rua", explanation: "Guarda-chuva serve para proteção externa; não chove dentro de casa."),
            ExerciseItem(prompt: "Absurdo: O gato latiu forte para o carteiro.", options: ["Gatos miam; cachorros latem", "Gatos só latem para ratos", "Carteiros têm medo de gatos", "Gatos latem apenas de manhã"], correctAnswer: "Gatos miam; cachorros latem", explanation: "Latir é uma vocalização dos cães; gatos emitem miados."),
            ExerciseItem(prompt: "Absurdo: Ele colocou gasolina na bicicleta para ir à padaria.", options: ["Bicicletas são movidas a pedal, não a gasolina", "Bicicletas usam combustível diesel", "Bicicletas funcionam apenas com baterias", "Bicicletas não precisam de rodas"], correctAnswer: "Bicicletas são movidas a pedal, não a gasolina", explanation: "A bicicleta comum depende apenas da força física humana nos pedais."),
            ExerciseItem(prompt: "Absurdo: Caiu uma neve pesada no dia quente de verão.", options: ["A neve só cai no frio do inverno", "Os dias de verão são escuros", "O verão só acontece em dezembro", "A neve é quente ao toque"], correctAnswer: "A neve só cai no frio do inverno", explanation: "A neve precisa de temperaturas congelantes para se formar e cair."),
            ExerciseItem(prompt: "Absurdo: Ela lavou a louça suja dentro da lixeira.", options: ["Louça se lava na pia, não na lixeira", "Lixeiras servem para roupas limpas", "Louça deve ser lavada no jardim", "A lixeira está cheia de água limpa"], correctAnswer: "Louça se lava na pia, não na lixeira", explanation: "A lixeira armazena resíduos; a pia de cozinha serve para lavar louça."),
            ExerciseItem(prompt: "Absurdo: Ele regou o jardim com um balde cheio de areia seca.", options: ["Plantas precisam de água para crescer, não areia", "A areia deixa a terra molhada demais", "Jardins devem ser cheios de pedras", "A areia serve para plantas artificiais"], correctAnswer: "Plantas precisam de água para crescer, não areia", explanation: "Plantas precisam de água para se hidratar; areia seca não rega a planta.")
        ]
    )

    // MARK: - Easy Sequencing
    private static let easySequencing = Exercise(
        title: "Passos do Dia a Dia",
        instructions: "Ordene os passos da atividade de forma lógica.",
        section: .language,
        type: .sequencing,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Fazer uma torrada", options: ["Colocar a fatia de pão na torradeira", "Abaixar a alavanca para começar", "Esperar a torrada subir", "Passar manteiga na torrada quente"], correctAnswer: "Colocar a fatia de pão na torradeira | Abaixar a alavanca para começar | Esperar a torrada subir | Passar manteiga na torrada quente", explanation: "Primeiro insere-se o pão, inicia-se o calor, aguarda-se o término e passa-se o ingrediente."),
            ExerciseItem(prompt: "Lavar as mãos", options: ["Molhar as mãos com água", "Passar sabão e esfregar as palmas", "Enxaguar o sabão com água", "Secar as mãos com uma toalha limpa"], correctAnswer: "Molhar as mãos com água | Passar sabão e esfregar as palmas | Enxaguar o sabão com água | Secar as mãos com uma toalha limpa", explanation: "Higiene das mãos: molhar, ensaboar/esfregar, enxaguar e secar."),
            ExerciseItem(prompt: "Enviar uma carta", options: ["Escrever a mensagem no papel", "Colocar o papel dentro do envelope", "Escrever o endereço do destinatário", "Colar o selo e colocar na caixa de correio"], correctAnswer: "Escrever a mensagem no papel | Colocar o papel dentro do envelope | Escrever o endereço do destinatário | Colar o selo e colocar na caixa de correio", explanation: "Envio postal: redigir, envelopar, endereçar e postar com selo."),
            ExerciseItem(prompt: "Escovar os dentes", options: ["Colocar pasta na escova de dentes", "Escovar bem todos os dentes", "Enxaguar a boca com água", "Lavar e guardar a escova"], correctAnswer: "Colocar pasta na escova de dentes | Escovar bem todos os dentes | Enxaguar a boca com água | Lavar e guardar a escova", explanation: "Escovação dental: aplicar pasta, escovar dentes, enxaguar e limpar a escova."),
            ExerciseItem(prompt: "Preparar chá quente", options: ["Ferver água na chaleira", "Colocar o saquinho de chá na xícara", "Despejar a água quente na xícara", "Deixar em infusão e beber"], correctAnswer: "Ferver água na chaleira | Colocar o saquinho de chá na xícara | Despejar a água quente na xícara | Deixar em infusão e beber", explanation: "Preparo de chá: aquecer água, colocar saquinho, verter líquido e aguardar infusão.")
        ]
    )

    // MARK: - Medium Word Association
    private static let mediumWordAssociation = Exercise(
        title: "Associação de Palavras",
        instructions: "Escolha a palavra mais relacionada com o termo fornecido.",
        section: .language,
        type: .multipleChoice,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "BIBLIOTECA", options: ["Silêncio", "Barulho", "Multidão", "Jogo"], correctAnswer: "Silêncio", explanation: "A biblioteca é um espaço de leitura onde se exige silêncio."),
            ExerciseItem(prompt: "HOSPITAL", options: ["Cura", "Férias", "Compras", "Culinária"], correctAnswer: "Cura", explanation: "Hospitais são locais de tratamento médico voltados para a cura de doentes."),
            ExerciseItem(prompt: "AEROPORTO", options: ["Partida", "Sono", "Jardinagem", "Pintura"], correctAnswer: "Partida", explanation: "O aeroporto é o ponto de embarque e partida de voos de viagem."),
            ExerciseItem(prompt: "DESERTO", options: ["Seca", "Tempestade", "Floresta", "Oceano"], correctAnswer: "Seca", explanation: "Desertos são caracterizados pela extrema falta de umidade e seca."),
            ExerciseItem(prompt: "CASAMENTO", options: ["Aliança", "Exame", "Escritório", "Chave"], correctAnswer: "Aliança", explanation: "A aliança é o símbolo material tradicional de união trocado no casamento."),
            ExerciseItem(prompt: "FAZENDA", options: ["Colheita", "Cidade", "Escritório", "Fábrica"], correctAnswer: "Colheita", explanation: "A fazenda produz alimentos agrícolas, cujo resultado final é a colheita."),
            ExerciseItem(prompt: "COZINHA", options: ["Receita", "Cama", "Carro", "Chuveiro"], correctAnswer: "Receita", explanation: "Cozinhar envolve seguir orientações ou uma receita culinária."),
            ExerciseItem(prompt: "MONTANHA", options: ["Cume", "Porão", "Rua", "Deserto"], correctAnswer: "Cume", explanation: "O cume é a parte mais alta ou o pico de uma montanha."),
            ExerciseItem(prompt: "TRIBUNAL", options: ["Justiça", "Teatro", "Cozinha", "Mercado"], correctAnswer: "Justiça", explanation: "O tribunal é a instituição judicial voltada a aplicar as leis e a justiça."),
            ExerciseItem(prompt: "ESCRITÓRIO", options: ["Prazo", "Praia", "Cama", "Picnic"], correctAnswer: "Prazo", explanation: "Trabalhos de escritório costumam ser organizados por datas limite ou prazos."),
            ExerciseItem(prompt: "TEATRO", options: ["Palco", "Cozinha", "Rodovia", "Floresta"], correctAnswer: "Palco", explanation: "O palco é o tablado onde os atores se apresentam no teatro."),
            ExerciseItem(prompt: "FLORESTA", options: ["Natureza", "Cidade", "Deserto", "Asfalto"], correctAnswer: "Natureza", explanation: "Florestas são biomas naturais caracterizados por árvores e vida selvagem."),
            ExerciseItem(prompt: "LABORATÓRIO", options: ["Experimento", "Culinária", "Dança", "Compras"], correctAnswer: "Experimento", explanation: "Laboratórios são instalações para a realização de pesquisas e experimentos."),
            ExerciseItem(prompt: "MUSEU", options: ["Exposição", "Filme", "Esportes", "Culinária"], correctAnswer: "Exposição", explanation: "Museus preservam acervos históricos e artísticos exibidos em exposições."),
            ExerciseItem(prompt: "DENTISTA", options: ["Cárie", "Corte de cabelo", "Passagem", "Culinária"], correctAnswer: "Cárie", explanation: "O dentista trata da saúde dos dentes, combatendo problemas como a cárie.")
        ]
    )

    // MARK: - Medium Homonyms
    private static let mediumHomonyms = Exercise(
        title: "Homófonos Médios",
        instructions: "Escolha as palavras corretas para completar as orações.",
        section: .language,
        type: .homonym,
        trackedType: nil,
        difficulty: .medium,
        items: [
            ExerciseItem(prompt: "[noz / nos] Comemos doce de ___ no Natal. Ela ___ ajudou com a mudança.", options: ["noz...nos", "nos...noz", "noz...nos", "nos...nos"], correctAnswer: "noz...nos", explanation: "'Noz' é a semente comestível; 'nos' é o pronome oblíquo."),
            ExerciseItem(prompt: "[traz / trás] Ele ___ as compras da feira. O menino ficou para ___ do grupo.", options: ["traz...trás", "trás...traz", "traz...traz", "trás...trás"], correctAnswer: "traz...trás", explanation: "'Traz' é do verbo trazer; 'trás' indica a parte de trás."),
            ExerciseItem(prompt: "[houve / ouve] Não ___ nenhuma dúvida na aula. Ela ___ música clássica.", options: ["houve...ouve", "ouve...houve", "houve...houve", "ouve...ouve"], correctAnswer: "houve...ouve", explanation: "'Houve' é do verbo haver; 'ouve' é do verbo ouvir."),
            ExerciseItem(prompt: "[mal / mau] Ele se comportou muito ___. Aquele era um ___ exemplo.", options: ["mal...mau", "mau...mal", "mal...mal", "mau...mau"], correctAnswer: "mal...mau", explanation: "'Mal' é o oposto de bem; 'mau' é o oposto de bom."),
            ExerciseItem(prompt: "[conserto / concerto] O mecânico fez o ___ do carro. Fomos ao ___ de piano.", options: ["conserto...concerto", "concerto...conserto", "conserto...conserto", "concerto...concerto"], correctAnswer: "conserto...concerto", explanation: "'Conserto' é reparo; 'concerto' é espetáculo musical.")
        ]
    )

    // MARK: - Easy Complete the Saying
    private static let easyCompleteSaying = Exercise(
        title: "Provérbios Populares",
        instructions: "Escolha a palavra que completa corretamente o ditado popular.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .easy,
        items: [
            ExerciseItem(prompt: "Mais vale um pássaro na mão do que dois ___", options: ["voando", "cantando", "presos", "comendo"], correctAnswer: "voando", explanation: "É melhor ter uma garantia pequena do que arriscar tudo por algo incerto."),
            ExerciseItem(prompt: "Quem não tem cão, caça com ___", options: ["gato", "rato", "leão", "passarinho"], correctAnswer: "gato", explanation: "Devemos improvisar com os recursos que temos à disposição."),
            ExerciseItem(prompt: "A cavalo dado não se olha os ___", options: ["dentes", "olhos", "cascos", "pelos"], correctAnswer: "dentes", explanation: "Não se deve criticar ou desvalorizar um presente recebido."),
            ExerciseItem(prompt: "De grão em grão, a galinha enche o ___", options: ["papo", "ninho", "saco", "estômago"], correctAnswer: "papo", explanation: "Pequenas economias acumuladas resultam em grandes quantidades."),
            ExerciseItem(prompt: "Cão que ladra não ___", options: ["morde", "corre", "late", "brinca"], correctAnswer: "morde", explanation: "Quem muito ameaça geralmente não age de verdade."),
            ExerciseItem(prompt: "Quem avisa, amigo ___", options: ["é", "será", "foi", "está"], correctAnswer: "é", explanation: "Amigos verdadeiros avisam sobre perigos e nos ajudam."),
            ExerciseItem(prompt: "A mentira tem perna ___", options: ["curta", "longa", "torta", "quebrada"], correctAnswer: "curta", explanation: "As mentiras são descobertas rapidamente."),
            ExerciseItem(prompt: "Antes só do que mal ___", options: ["acompanhado", "vestido", "alimentado", "protegido"], correctAnswer: "acompanhado", explanation: "É melhor a solidão do que a companhia de pessoas nocivas."),
            ExerciseItem(prompt: "Cada macaco no seu ___", options: ["galho", "ninho", "quarto", "lugar"], correctAnswer: "galho", explanation: "Cada pessoa deve cuidar dos seus próprios assuntos sem interferir nos outros."),
            ExerciseItem(prompt: "Quem planta colhe, e quem semeia ventos colhe ___", options: ["tempestades", "flores", "chuvas", "frutas"], correctAnswer: "tempestades", explanation: "Ações ruins geram consequências ainda piores no futuro."),
            ExerciseItem(prompt: "Filho de peixe, peixinho ___", options: ["é", "será", "nada", "morre"], correctAnswer: "é", explanation: "Os filhos herdam traços e talentos de seus pais."),
            ExerciseItem(prompt: "Quem ri por último, ri ___", options: ["melhor", "mais", "alto", "depressa"], correctAnswer: "melhor", explanation: "A vitória final é a que realmente importa."),
            ExerciseItem(prompt: "Onde há fumaça, há ___", options: ["fogo", "calor", "brasa", "vento"], correctAnswer: "fogo", explanation: "Se há boatos, costuma haver algum fundo de verdade."),
            ExerciseItem(prompt: "De médico e de louco, todo mundo tem um ___", options: ["pouco", "dia", "amigo", "lado"], correctAnswer: "pouco", explanation: "As pessoas têm um pouco de sabedoria prática e de excentricidade."),
            ExerciseItem(prompt: "Há males que vêm para o ___", options: ["bem", "mal", "pior", "fim"], correctAnswer: "bem", explanation: "Situações ruins podem acabar gerando resultados positivos no final.")
        ]
    )

    // MARK: - Hard Complete the Saying
    private static let hardCompleteSaying = Exercise(
        title: "Ditados Avançados",
        instructions: "Escolha a palavra que completa corretamente o ditado popular.",
        section: .language,
        type: .sentenceCompletion,
        trackedType: nil,
        difficulty: .hard,
        items: [
            ExerciseItem(prompt: "Água mole em pedra dura, tanto bate até que ___", options: ["fura", "quebra", "racha", "molha"], correctAnswer: "fura", explanation: "A persistência vence qualquer obstáculo difícil."),
            ExerciseItem(prompt: "Em casa de ferreiro, o espeto é de ___", options: ["pau", "ferro", "aço", "pedra"], correctAnswer: "pau", explanation: "É comum faltar em nossa casa aquilo que é a nossa própria especialidade profissional."),
            ExerciseItem(prompt: "A pressa é a inimiga da ___", options: ["perfeição", "rapidez", "calma", "beleza"], correctAnswer: "perfeição", explanation: "Fazer as coisas correndo gera erros e imperfeições."),
            ExerciseItem(prompt: "De noite todos os gatos são ___", options: ["pardos", "pretos", "brancos", "cinzas"], correctAnswer: "pardos", explanation: "Na escuridão ou sem detalhes, as diferenças desaparecem."),
            ExerciseItem(prompt: "Quem cala ___", options: ["consente", "fala", "sabe", "pensa"], correctAnswer: "consente", explanation: "Quem não discorda ou fica em silêncio concorda tacitamente."),
            ExerciseItem(prompt: "Não se deve colocar todos os ovos na mesma ___", options: ["cesta", "galinha", "cozinha", "caixa"], correctAnswer: "cesta", explanation: "Não concentre todos os seus recursos ou riscos em um único lugar."),
            ExerciseItem(prompt: "Quem semeia vento, colhe ___", options: ["tempestades", "chuvas", "ventanias", "folhas"], correctAnswer: "tempestades", explanation: "Quem semeia vento, colhe tempestades. Nossas ações negativas têm consequências graves."),
            ExerciseItem(prompt: "Nem tudo o que reluz é ___", options: ["ouro", "prata", "brilhante", "metal"], correctAnswer: "ouro", explanation: "Aparências bonitas podem esconder realidades ruins ou falsas."),
            ExerciseItem(prompt: "Vão-se os anéis, fiquem os ___", options: ["dedos", "braços", "amigos", "bens"], correctAnswer: "dedos", explanation: "É melhor perder bens materiais do que a própria vida ou integridade."),
            ExerciseItem(prompt: "Não cutuque o cão com vara ___", options: ["curta", "longa", "verde", "grossa"], correctAnswer: "curta", explanation: "Não se deve provocar o perigo desnecessariamente."),
            ExerciseItem(prompt: "Quem com ferro fere, com ferro será ___", options: ["ferido", "curado", "morto", "pago"], correctAnswer: "ferido", explanation: "Quem faz o mal sofrerá o mesmo mal de volta."),
            ExerciseItem(prompt: "Um dia é da caça, outro do ___", options: ["caçador", "lobo", "leão", "bicho"], correctAnswer: "caçador", explanation: "As posições de sorte e azar se invertem com o tempo."),
            ExerciseItem(prompt: "A ocasião faz o ___", options: ["ladrão", "monge", "santo", "rei"], correctAnswer: "ladrão", explanation: "Facilidades podem induzir as pessoas a agirem de forma errada."),
            ExerciseItem(prompt: "Antes prevenir do que ___", options: ["remediar", "chorar", "tratar", "pagar"], correctAnswer: "remediar", explanation: "Evitar problemas é mais fácil do que consertá-los depois."),
            ExerciseItem(prompt: "Gato escaldado tem medo de água ___", options: ["fria", "quente", "suja", "doce"], correctAnswer: "fria", explanation: "Quem passou por uma experiência ruim fica traumatizado e cauteloso com tudo.")
        ]
    )
}
