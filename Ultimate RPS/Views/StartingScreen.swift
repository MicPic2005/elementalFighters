//
//  ContentView.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/25/22.
//

import SwiftUI

struct StartingScreen: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                GameColor.BG.ignoresSafeArea()
                    .scaledToFill()
                VStack{
                    VStack(alignment: .center, spacing: 0){
                        Text("Welcome to Elemental Fighters")
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(.largeTitle)
                            .padding(200)
                    }
                    Spacer()
                    NavigationLink(destination: SelectionScreen(), label: { NavigationButton(str: "Press here to start the game")})
                }
                .foregroundColor(.white)
            }
            .navigationBarHidden(true)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartingScreen()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

