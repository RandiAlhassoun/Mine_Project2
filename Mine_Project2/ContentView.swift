//
//  ContentView.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI

struct ContentView: View {
//    var body: some View {
//        Text("x, world!")
//            .padding()
//    }
    var body: some View {
      NavigationView {
          Text("rand")
//        List {
//          ForEach(0..<25, id: \.self, content: { i in
//            NavigationLink("(\(i)) Hello, Rand!", destination: EmptyView())
//          })
//        }
        .navigationBarTitle("Bar Title")
      }
      .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
      , tintColor: .white)

      //  .background(Color(red: 0.176, green: 0.217, blue: 0.479))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
