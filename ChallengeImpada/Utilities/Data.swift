//
//  Data.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import Foundation

struct Data {
    
    let onboardingScene: Scene = Scene(
        dialogues: [
        Dialogue(data: (character: .arquis, text: "Ligando Sistemas… Baixando Atualizações…. Finalizando Instalações…")),
        Dialogue(data: (character: .arquis, text: "Concluído.")),
        Dialogue(data: (character: .arquis, text: "Olá, eu sou o Arquis, a inteligência artificial que vai lhe explicar os objetivos da missão.")),
        Dialogue(data: (character: .arquis, text: "Como devo chamá-lo?")),
        Dialogue(data: (character: .arquis, text: "Como você deve saber a nossa era está um caos desde que o vilão, Morcego Assombrado, voltou no passado e alterou a linha do tempo.")),
        Dialogue(data: (character: .arquis, text: "Agora você foi escolhido para consertar tudo que ele fez de errado, e para isso vamos viajar para o passado em cada local que ele visitou.")),
        Dialogue(data: (character: .arquis, text: "Lá vamos encontrar figuras históricas que vão nos ajudar, e com eles do nosso lado vamos salvar o mundo!")),
        Dialogue(data: (character: .arquis, text: "Está preparado? Então vamos nessa!")),
    ],
        maxIndex: 8)
    
    
    let daVinciFirstScene: Scene = Scene(
        dialogues: [
        Dialogue(data: (character: .arquis, text: "Parece que a viagem do tempo funcionou!")),
        Dialogue(data: (character: .arquis, text: "Nós estamos em 1503, o ano em que o grande pintor Leonardo Da Vinci completou sua obra prima, a Mona Lisa.")),
        Dialogue(data: (character: .arquis, text: "Mas veja, está tudo cinza, e todos estão tristes e desanimados… O Morcego Assombrado roubou toda a cor do mundo!")),
        Dialogue(data: (character: .arquis, text: "Nós temos que encontrar um jeito de restaurar a cor, e assim trazer a felicidade de volta ao mundo.")),
        Dialogue(data: (character: .arquis, text: "Por isso que eu nos trouxe aqui, vamos encontrar o Da Vinci, ele foi um dos pintores mais importantes da história da arte, além de um inventor genial!")),
        Dialogue(data: (character: .arquis, text: "Com certeza vai saber como nos ajudar.")),
        Dialogue(data: (character: .arquis, text: "Veja! Aquele ali parece ser o Da Vinci! Vamos falar com ele.")),
        Dialogue(data: (character: .daVinci, text: "Ah, olá garoto, como posso lhe ajudar?")),
        Dialogue(data: (character: .daVinci, text: "Hmm entendo. Então esse tal de Morcego é o responsável pelo sumiço das cores…")),
        Dialogue(data: (character: .daVinci, text: "Bem, não vamos perder tempo!")),
        Dialogue(data: (character: .daVinci, text: "Eu tenho um ateliê secreto, onde eu guardo os meus maiores inventos, vamos até lá.")),
        Dialogue(data: (character: .daVinci, text: "Chegamos, seja bem vindo e cuidado para não quebrar nada!")),
        Dialogue(data: (character: .daVinci, text: "Aquela ali é a máquina que eu uso para misturar e criar cores novas para minhas pinturas, podemos usá-la para recriar as cores do mundo.")),
        Dialogue(data: (character: .daVinci, text: "Felizmente eu guardei um pouco de cada cor primária dentro do meu cofre camuflado, o Morcego não conseguiria roubá-las aqui!")),
        Dialogue(data: (character: .daVinci, text: "Ok, agora é só colocá-las na máquina… Girar isso aqui… Apertar aqui ali… Certo!")),
        Dialogue(data: (character: .daVinci, text: "Vamos, está pronto para me ajudar a restaurar as cores do mundo?")),
        Dialogue(data: (character: .daVinci, text: "Hora de acabarmos com o plano desse Morcego!")),
    ],
        maxIndex: 16)
    
    let daVinciSecondScene: Scene = Scene(
        dialogues: [
        Dialogue(data: (character: .daVinci, text: "Isso agente! Conseguimos!")),
        Dialogue(data: (character: .daVinci, text: "Veja, temos todas as cores que precisamos, agora vamos colocá-las na minha máquina para devolvê-las para o mundo, rápido!")),
        Dialogue(data: (character: .arquis, text: "Está funcionando, Da Vinci!")),
        Dialogue(data: (character: .arquis, text: "O mundo tem cores novamente! Conseguimos, restauramos esse pedaço da linha do tempo!")),
        Dialogue(data: (character: .arquis, text: "Obrigado Da Vinci, não teríamos conseguido fazer isso sem sua ajuda!")),
        Dialogue(data: (character: .daVinci, text: "Ora, não seja modesto Arquis, vocês que são os heróis aqui!")),
        Dialogue(data: (character: .daVinci, text: "Eu meramente ajudei fornecendo os materiais, Nome do jogador - que fez a maior parte do trabalho!")),
        Dialogue(data: (character: .daVinci, text: "Sem contar toda a coragem de vocês viajando para tempos desconhecidos nessa aventura, devo dizer que estou deveras inspirado por seu conto de bravura!")),
        Dialogue(data: (character: .daVinci, text: "Desejo a vocês toda sorte do mundo nas suas próximas viagem, e acabem com esse Morcego!")),
        Dialogue(data: (character: .arquis, text: "Então vamos lá")),
        Dialogue(data: (character: .arquis, text: "Hora da nossa próxima parada nessa aventura pelo tempo!")),
    ],
        maxIndex: 10)
  
    
    
    
    
}
