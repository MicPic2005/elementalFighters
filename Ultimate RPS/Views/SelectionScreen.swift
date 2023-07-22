//
//  SelectionScreen.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/25/22.
//

import SwiftUI

struct SelectionScreen: View {
    
    
    
    var body: some View {
        ZStack{
            GameColor.BG.ignoresSafeArea().scaledToFill()
            VStack{
                Text("Choose a fighter!")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Spacer()
                VStack{
                    HStack{

                        NavigationLink(destination: BattleScreen(viewModel: GameViewModel(characterName: "Fox")), label: {
                            Image("foxWizard")
                                .resizable()
                                .frame(width: 140, height: 150, alignment: .center)
                        })
                        
                        NavigationLink(destination: BattleScreen(viewModel: GameViewModel(characterName: "Owl")), label: {
                            Image("owlWizard")
                                .resizable()
                                .frame(width: 140, height: 150, alignment: .center)
                        })
                        
                        NavigationLink(destination: BattleScreen(viewModel: GameViewModel(characterName: "Mouse")), label: {
                            Image("mouseWizard")
                                .resizable()
                                .frame(width: 140, height: 150, alignment: .center)
                        })

                    }
                        
                    
                    
//                    HStack{
//                        Button(action: {
//                            charSelect.selectCharacter(charName: "Fox Wizard")}, label: {
//                                Circle()
//                                    .fill(.red)
//                                    .frame(width: 100, height: 100, alignment: .leading)})
//                        Button(action: {
//                            charSelect.selectCharacter(charName: "Owl Wizard")}, label: {
//                                Circle()
//                                    .fill(.blue)
//                                    .frame(width: 100, height: 100, alignment: .leading)})
//                        Button(action: {
//                            charSelect.selectCharacter(charName: "Mouse Wizard")}, label: {
//                                Circle()
//                                    .fill(.green)
//                                    .frame(width: 100, height: 100, alignment: .leading)})
//                    }
                    HStack{
                        Text("Fox Wizard")
                            .bold()
//                            .frame(width: 100, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.red)
                        Text("Owl Wizard")
                            .bold()
//                            .frame(width: 100, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                        Text("Mouse Wizard")
                            .bold()
//                            .frame(width: 100, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.green)
                    }
                    Image("basicAsset")
                        .resizable()
//                        .scaledToFit()
                        .frame(width: 400, height: 400, alignment: .center)
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct SelectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SelectionScreen()
    }
}
