//
//  GameViewModel.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/27/22.
//

import Foundation

class GameViewModel: ObservableObject{
    
    @Published private var game = Game()
    
    init(characterName: String){
        self.choice = characterName
        game.selectCharacter(charName: characterName)
    }
    var choice: String{
        get{
            game.player.getName()
        }
        set{
            game.player.setCharName(charName: newValue)
        }
    }
    
    var playerHealth : Int{
        get{
            game.player.getHealth()
        }
    }
    var enemyHealth : Int{
        get{
            game.enemy.getHealth()
        }
    }
    
    func getPlayerName() -> String{
        return game.player.getName()
    }
    func getEnemyName() -> String{
        return game.enemy.getName()
    }

    func selectCharacter(charName: String ){
//        game.player.setCharName(charName: charName)
        game.selectCharacter(charName: charName)
    }
    
    func chooseWinner(move: String)->(playerHealth: Int, enemyHealth: Int, computerMove: String, winLose: String, gameIsOver: Bool){
        return game.rps(playerMove: move)
    }
}
