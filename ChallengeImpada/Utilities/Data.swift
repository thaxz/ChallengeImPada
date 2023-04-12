//
//  Data.swift
//  ChallengeImpada
//
//  Created by thaxz on 28/03/23.
//

import Foundation
import SwiftUI

struct Data {
    
    let onboardingScene: DialogueScene = DialogueScene(
        dialogues: [
        Dialogue(data: (character: CharactersData().arquis, text: "Ligando Sistemas… Baixando Atualizações…. Finalizando Instalações…")),
        Dialogue(data: (character: CharactersData().arquis, text: "Concluído.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Olá, eu sou o Arquis, a inteligência artificial que vai lhe explicar os objetivos da missão.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Bem vindo, Enzo Valentina")),
        Dialogue(data: (character: CharactersData().arquis, text: "Como você deve saber a nossa era está um caos desde que o vilão, Morcego Assombrado, voltou no passado e alterou a linha do tempo.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Agora você foi escolhido para consertar tudo que ele fez de errado, e para isso vamos viajar para o passado em cada local que ele visitou.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Lá vamos encontrar figuras históricas que vão nos ajudar, e com eles do nosso lado vamos salvar o mundo!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Está preparado? Então vamos nessa!")),
    ],
        maxIndex: 7,
        whichViewNavigateTo: AnyView(LevelSelectionView())
    )
    
    
    let daVinciOnboardingScene: DialogueScene = DialogueScene(
        dialogues: [
        Dialogue(data: (character: CharactersData().arquis, text: "Parece que a viagem do tempo funcionou!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Nós estamos em 1503, o ano em que o grande pintor Leonardo Da Vinci completou sua obra prima, a Mona Lisa.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Mas veja, está tudo cinza, e todos estão tristes e desanimados… O Morcego Assombrado roubou toda a cor do mundo!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Nós temos que encontrar um jeito de restaurar a cor, e assim trazer a felicidade de volta ao mundo.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Por isso que eu nos trouxe aqui, vamos encontrar o Da Vinci, ele foi um dos pintores mais importantes da história da arte, além de um inventor genial!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Com certeza vai saber como nos ajudar.")),
        Dialogue(data: (character: CharactersData().arquis, text: "Veja! Aquele ali parece ser o Da Vinci! Vamos falar com ele.")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Ah, olá garoto, como posso lhe ajudar?")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Hmm entendo. Então esse tal de Morcego é o responsável pelo sumiço das cores…")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Bem, não vamos perder tempo!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Eu tenho um ateliê secreto, onde eu guardo os meus maiores inventos, vamos até lá.")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Chegamos, seja bem vindo e cuidado para não quebrar nada!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Aquela ali é a máquina que eu uso para misturar e criar cores novas para minhas pinturas, podemos usá-la para recriar as cores do mundo.")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Felizmente eu guardei um pouco de cada cor primária dentro do meu cofre camuflado, o Morcego não conseguiria roubá-las aqui!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Ok, agora é só colocá-las na máquina… Girar isso aqui… Apertar aqui ali… Certo!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Vamos, está pronto para me ajudar a restaurar as cores do mundo?")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Hora de acabarmos com o plano desse Morcego!")),
    ],
        maxIndex: 16,
        whichViewNavigateTo: AnyView(DaVinciView())
    )
    
    let daVinciConclusionScene: DialogueScene = DialogueScene(
        dialogues: [
        Dialogue(data: (character: CharactersData().daVinci, text: "Isso pessoal! Conseguimos!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Veja, temos todas as cores que precisamos, agora vamos colocá-las na minha máquina para devolvê-las para o mundo, rápido!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Está funcionando, Da Vinci!")),
        Dialogue(data: (character: CharactersData().arquis, text: "O mundo tem cores novamente! Conseguimos, restauramos esse pedaço da linha do tempo!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Obrigado Da Vinci, não teríamos conseguido fazer isso sem sua ajuda!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Ora, não seja modesto Arquis, vocês que são os heróis aqui!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Eu meramente ajudei fornecendo os materiais, Nome do jogador - que fez a maior parte do trabalho!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Sem contar toda a coragem de vocês viajando para tempos desconhecidos nessa aventura, devo dizer que estou deveras inspirado por seu conto de bravura!")),
        Dialogue(data: (character: CharactersData().daVinci, text: "Desejo a vocês toda sorte do mundo nas suas próximas viagem, e acabem com esse Morcego!")),
        Dialogue(data: (character: CharactersData().arquis, text: "Então vamos lá")),
        Dialogue(data: (character: CharactersData().arquis, text: "Hora da nossa próxima parada nessa aventura pelo tempo!")),
    ],
        maxIndex: 10,
        whichViewNavigateTo: AnyView(LevelSelectionView())
    )
  
    
    let newtonOnboardingScene: DialogueScene = DialogueScene(
        dialogues: [
            Dialogue(data: (character: CharactersData().arquis, text: "Aiai, essa foi uma jornada e tanto né? Mas ainda não é hora de descansar!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Agora estamos em 1666, o ano em que o físico Isaac Newton descobriu a gravidade…. Ou deveria ter descoberto.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Como você pode ver parece que o Morcego impediu que isso acontecesse, por isso tudo está flutuando!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Mas como será que ele fez isso?")),
            Dialogue(data: (character: CharactersData().arquis, text: "Segundo os livros de história, Newton descobriu a gravidade quando uma maçã caiu na cabeça dele.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Pelo visto o vilão deve ter impedido que isso acontecesse.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Bem então ach-…. AH CUIDADO UMA VACA FLUTUANTE!!!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Ufa! Essa foi por pouco!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Acho melhor a gente ir consertar logo isso antes que algo pior aconteça.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Veja! O radar da nave diz que Newton está dormindo mais a frente, vamos pegar as maçãs pelo caminho, e tentar joga-las em sua cabeça para ele acordar!")),
        ],
        maxIndex: 9,
        whichViewNavigateTo: AnyView(NewtonView())
    )
    
    let newtonConclusionScene: DialogueScene = DialogueScene(
        dialogues: [
            Dialogue(data: (character: CharactersData().newton, text: "Ai! Mas o que é que… Uma maçã? Deve ter caído na minha cabeça… Mas pera aí…")),
            Dialogue(data: (character: CharactersData().newton, text: "O que faz ela cair? E com força para me machucar também… Será que existe algum tipo de força invisível que move as coisas para baixo?")),
            Dialogue(data: (character: CharactersData().newton, text: "Isso parece muito interessante… Tenho que investigar!")),
            Dialogue(data: (character: CharactersData().newton, text: "Mas antes um lanchinho que essa sonequinha me deu fome.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Veja! Newton conseguiu descobrir a gravidade, as coisas estão voltando ao normal, VIVA!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Conseguimos frustrar os planos do Vilão Morcego mais uma vez hehe.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Agora é hor…. AAAAAAAAAAAAAAA")),
            Dialogue(data: (character: CharactersData().arquis, text: "A GRAVIDADE VOLTOU E A NAVE TA CAÍNDOOOOOOO")),
            Dialogue(data: (character: CharactersData().arquis, text: "LIGA OS MOTORES RAPIDOOOOOOOOO")),
            Dialogue(data: (character: CharactersData().arquis, text: "AH PERA QUEM FAZ ISSO SOU EU AAAAAAAAA")),
            Dialogue(data: (character: CharactersData().arquis, text: "Ufa, essa foi por pouco!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Acho melhor a gente sair logo daqui antes que mais alguma coisa aconteça.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Hora da próxima parada!")),
        ],
        maxIndex: 12,
        whichViewNavigateTo: AnyView(LevelSelectionView())
    )
    
    let turingOnboardingScene: DialogueScene = DialogueScene(
        dialogues: [
            Dialogue(data: (character: CharactersData().arquis, text: "Vamos lá, hora da próxima missão!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Nós estamos no ano de 1941, nessa época os computadores estavam começando a surgir graças ao avanço de Alan Turing, um grande cientista da computação!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Mas acho que há algo errado… Nenhum dos computadores parece funcionar. E as pessoas estão desesperadas.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Não conseguem encontrar Turing em lugar nenhum!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Isso só pode ter sido obra dele… o Vilão deve ter colocado um bug nos computadores, e sequestrado Turing para que ele não consertasse os erros!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Temos que encontrá-lo rápido e consertar os computadores antes que o pior aconteça!")),
            Dialogue(data: (character: CharactersData().arquis, text: "AHÁ!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Veja, a nave conseguiu rastrear Turing, parece que ele está preso dentro de um porão.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Droga, é como eu pensava…")),
            Dialogue(data: (character: CharactersData().arquis, text: "O Morcego, usou tecnologia do futuro para prendê-lo lá, não vamos conseguir soltá-lo… e agora?")),
            Dialogue(data: (character: CharactersData().arquis, text: "A menos que… ISSO! Parece que o Morcego, esqueceu de levar o telefone de Turing, acho que conseguimos ligar para ele.")),
            Dialogue(data: (character: CharactersData().turing, text: "Alô?")),
            Dialogue(data: (character: CharactersData().arquis, text: "Turing! Não há muito tempo para explicar mas estamos do seu lado!")),
            Dialogue(data: (character: CharactersData().arquis, text: "O Vilão que te prendeu ai colocou vários bugs nos computadores, e precisamos de você para desligá-los antes que o pior aconteça!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Pode nos ajudar?")),
            Dialogue(data: (character: CharactersData().turing, text: "Entendi… Se o que vocês falam é verdade não temos tempo a perder!")),
            Dialogue(data: (character: CharactersData().turing, text: "Vou passar para vocês o código que consegue reiniciar o sistema dos computadores para que eles se livrem dos bugs.")),
            Dialogue(data: (character: CharactersData().turing, text: "O problema é que esse código também pode ser usado para tomar total controle deles.")),
            Dialogue(data: (character: CharactersData().turing, text: "Se o Vilão, descobrir não terá mais jeito de reverter.")),
            Dialogue(data: (character: CharactersData().turing, text: "Prestem bastante atenção, vou enviar uma mensagem criptografada caso ele esteja ouvindo.")),
            Dialogue(data: (character: CharactersData().turing, text: "Confio que vocês serão capazes de decifrar a mensagem e salvar o mundo!")),
        ],
        maxIndex: 20,
        whichViewNavigateTo: AnyView(TestingScale())
    )
    
    let turingConclusionScene: DialogueScene = DialogueScene(
        dialogues: [
            Dialogue(data: (character: CharactersData().arquis, text: "Conseguimos!!!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Desciframos a mensagem de Turing!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Rápido, vamos colocar o código no computador antes que não tenha mais volta!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Muito bem! Parece estar funcionando!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Veja, até a porta que prendia Turing está se abrindo!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Isso significa que o Vilão fracassou e fugiu mais uma vez…")),
            Dialogue(data: (character: CharactersData().arquis, text: "VENCEMOS DE NOVO!!!!!!!")),
            Dialogue(data: (character: CharactersData().turing, text: "Finalmente estou livre!")),
            Dialogue(data: (character: CharactersData().turing, text: "Obrigado meus amigos, se não fosse por vocês eu não sei por quanto tempo ficaria naquele quarto fedido,")),
            Dialogue(data: (character: CharactersData().turing, text: "Agora se me dão licença, ainda tenho muitas coisas a fazer, os computadores foram limpos, mas estão longes de ser perfeitos.")),
            Dialogue(data: (character: CharactersData().arquis, text: "Com toda certeza vovô- digo Senhor Turing!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Continue melhorando eles e um dia eles serão extremamente charmosos e divertidos ;)")),
            Dialogue(data: (character: CharactersData().arquis, text: "Bem está na hora de nós irmos!")),
            Dialogue(data: (character: CharactersData().arquis, text: "Nosso próximo destino nos aguarda…")),
    ],
        maxIndex: 13,
        whichViewNavigateTo: AnyView(LevelSelectionView())
    )

}
