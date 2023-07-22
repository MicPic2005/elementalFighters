//
//  BattleScreen.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/25/22.
//

import SwiftUI

struct BattleScreen: View {
//    var choice: String
//    var choice: String
//    func relayChoice() ->String{
//        return choice
//    }
    @StateObject var viewModel : GameViewModel
    @State var pHealth: Int = 50
    @State var eHealth: Int = 50
    @State var computerMove: String = ""
    @State var results: String = ""
    @State var gameIsOver: Bool = false
    
    var body: some View {
        
        ZStack{
            
            GameColor.BG.ignoresSafeArea()
                .scaledToFill()
            
            VStack{
                ZStack(alignment: .center){
                    ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 300, height: 20)
                                .border(Color.black, width: 2)
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: CGFloat(60*eHealth/10), height: 20)
                    }
                    Text("\(eHealth) HP")
                        .frame(width: 300, height: 20, alignment: .center)
                        .border(Color.black, width: 2)
                }
                HStack{
                    Text("\(computerMove)")
                        .frame(width: 90, height: 55, alignment: .center)
                        .background(.gray)
                    Image("\(viewModel.getEnemyName())")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                    
                }
                Spacer()
                Text("\(results)")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                HStack{
                    ZStack{
                        switch viewModel.choice {
//                        switch (viewModel.getPlayerName()) {
                        case "Fox": Image("foxWizard")
                                .resizable()
                                .frame(width: 150, height: 150, alignment: .center)
                        case "Owl": Image("owlWizard")
                                .resizable()
                                .frame(width: 150, height: 150, alignment: .center)
                        default: Image("mouseWizard")
                                .resizable()
                                .frame(width: 150, height: 150, alignment: .center)
                        }
                    }
                    VStack{
                        Button(
                            action:{
                                print("Fire")
                                let health = viewModel.chooseWinner(move: "Fire")
                                pHealth = health.playerHealth
                                eHealth = health.enemyHealth
                                computerMove = health.computerMove
                                results = health.winLose
                                gameIsOver = health.gameIsOver
                                    },
                               label: {
                                Text("Fire")
                            .frame(width: 60, height: 40, alignment: .center)
                            .background(GameColor.fireColor)
                            .foregroundColor(.black)
                        })
                        HStack{
                            Button(action:{ print("Water")
                                let health = viewModel.chooseWinner(move: "Water")
                                pHealth = health.playerHealth
                                eHealth = health.enemyHealth
                                computerMove = health.computerMove
                                gameIsOver = health.gameIsOver

                            }, label: {Text("Water")
                                .frame(width: 60, height: 40, alignment: .center)
                                .background(GameColor.waterColor)
                                .foregroundColor(.black)
                            })
                            Button(action:{ print("Grass")
                                let health = viewModel.chooseWinner(move: "Grass")
                                pHealth = health.playerHealth
                                eHealth = health.enemyHealth
                                computerMove = health.computerMove
                                gameIsOver = health.gameIsOver

                            }, label: {Text("Grass")
                                .frame(width: 60, height: 40, alignment: .center)
                                .background(GameColor.grassColor)
                                .foregroundColor(.black)
                            })
                        }
                    }
                }
                ZStack(alignment: .center){
                    ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(.red)
                                .frame(width: 300, height: 20)
                                .border(Color.black, width: 2)
                            Rectangle()
                                .foregroundColor(.green)
                                .frame(width: CGFloat( 60*pHealth/10), height: 20)
                    }
                Text("\(pHealth) HP")
                        .frame(width: 300, height: 20, alignment: .center)
                        .border(Color.black, width: 2)
            }
            .navigationBarHidden(true)
            .background(
                NavigationLink(destination: EndScreen(viewModel: viewModel), isActive: .constant(gameIsOver), label: { EmptyView()}))
        }
    }
}
}
struct BattleScreen_Previews: PreviewProvider {
    static var previews: some View {
        BattleScreen(viewModel: GameViewModel(characterName: "A"))
    }
}
