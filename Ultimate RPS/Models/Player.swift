//
//  Player.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/26/22.
//

import Foundation

class Player{
    private var charName: String = " "
    private var health: Int = 50
    
    func getName() -> String{
        return charName
    }
    func setCharName(charName: String) {
        self.charName = charName
    }
    func decreaseHealth() {
        self.health -= 10
        print(charName)
        print(self.health)
    }
    func getHealth() -> Int {
        self.health 
    }

}
