//
//  Game.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/26/22.
//

import Foundation

class Game {
    var player = Player()
    var enemy = Player()
    var possibleMoves = ["Fire","Water","Grass"]
    
    func selectCharacter(charName: String ){
        player.setCharName(charName: charName)
        
        let randomNumber = Int.random(in: 0...2)
        let characters = ["foxWizard", "owlWizard", "mouseWizard"]
        print(randomNumber)
        enemy.setCharName(charName: characters[randomNumber])
    }
    func computerAction() -> String{
        let index = Int.random(in: 0..<3)
        let randomMove = possibleMoves[index]

        return randomMove
    }
    
    func rps(playerMove: String) -> (playerHealth: Int, enemyHealth: Int, computerMove: String, winLose: String, gameIsOver: Bool){
        let computerMove = computerAction()
        var winLose: String = " "
        var gameIsOver: Bool = false
        if playerMove == computerMove{
            winLose = "Player Tie"
        }
        else if playerMove == "Fire"{
            if computerMove == "Grass"{
                enemy.decreaseHealth()
                winLose = "Player Win"
            }
            else{
                player.decreaseHealth()
                winLose = "Player Lose"
            }
        }
        else if playerMove == "Water"{
            if computerMove == "Fire"{
                enemy.decreaseHealth()
                winLose = "Player Win"

            }
            else{
                player.decreaseHealth()
                winLose = "Player Lose"

            }
        }
        else if playerMove == "Grass"{
            if computerMove == "Water"{
                enemy.decreaseHealth()
                winLose = "Player Win"

            }
            else{
                player.decreaseHealth()
                winLose = "Player Lose"

            }
        }
        if (enemy.getHealth() == 0 || player.getHealth() == 0){
            gameIsOver = true
        }
        
        return (player.getHealth(), enemy.getHealth(), computerMove, winLose, gameIsOver)
    }
}
