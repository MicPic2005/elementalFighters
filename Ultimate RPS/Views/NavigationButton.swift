//
//  NavigationButton.swift
//  Ultimate RPS
//
//  Created by CRSJ on 7/25/22.
//

import SwiftUI

struct NavigationButton: View {
    let str: String
    
    var body: some View {
        HStack{
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(GameColor.accentColor)
                    .frame(width: 370, height: 50)
                Text(str)
                    .bold()
                    .font(.body)
                    .padding()
                    .foregroundColor(.white)
            }
            Spacer()
        }
    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(str: " ")
    }
}
