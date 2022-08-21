//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Денис Ільницький on 20/08/2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var showAwards = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAwards ? "Hide Awards" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAwards ? 2 : 1)
                        .rotationEffect(.degrees(showAwards ? 0 : 180))
                }
            }
            Spacer()
            if showAwards {
                GradientRectangles()
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            Spacer()
            }
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            showAwards.toggle()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
