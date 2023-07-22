//
//  EndScreen.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/25/22.
//

import SwiftUI

struct EndScreen: View {
    @StateObject var viewModel : GameViewModel
    
    func getWinner() ->String{
        if viewModel.playerHealth != 0{
            return "You Win!"
        }
        if viewModel.enemyHealth != 0{
            return "Game Over!"
        }
        return "Game Over!"

    }
    var body: some View {
        NavigationView{
            ZStack{
                GameColor.BG.ignoresSafeArea()
                    .scaledToFill()
                VStack{
                    VStack{
                        Text("\(getWinner())")
                            .bold()
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: SelectionScreen(), label: { NavigationButton(str: "Press here to play again!")})
                }
                .foregroundColor(.white)
            }
        }
        .navigationBarHidden(true)
    }
}

struct EndScreen_Previews: PreviewProvider {
    static var previews: some View {
        EndScreen(viewModel: GameViewModel(characterName: ""))
    }
}
