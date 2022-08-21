//
//  ContentView.swift
//  AwardsColectionApp
//
//  Created by Денис Ільницький on 20/08/2022.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
