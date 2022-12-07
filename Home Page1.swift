//
//  Home Page1.swift
//  Mine_Project2
//
//  Created by Shifa Alfaisal on 13/05/1444 AH.
//

import SwiftUI

struct HomePage1: View {
    var body: some View {
        NavigationView {
            ZStack{
                Rectangle()
                    .fill(Color(red: 0.176, green: 0.217, blue: 0.479))
                    .frame(width: 900, height: 200)
                    .font(.largeTitle)
                    .padding(.bottom, 780.0)
            }
            

            .navigationTitle("Explore")
        }
    }
}

struct HomePage1_Previews: PreviewProvider {
    static var previews: some View {
        HomePage1()
    }
}

