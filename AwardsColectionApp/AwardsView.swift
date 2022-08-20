//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Денис Ільницький on 20/08/2022.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView {
                    GradientRectangles()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurvesView()
                        .frame(width: 200, height: 200)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
