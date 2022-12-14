//
//  TabBar.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
         TabView(){
             
             
             Sign_Up_Learner().tabItem{Image(systemName: "house")
                 Text("Explore")
             }.tag(1)
             
             ContentView().tabItem{Image(systemName: "text.bubble")
                 Text("Chat")
             }.tag(2)
             
             login_().tabItem{Image(systemName: "person.circle")
                 Text("Profile")
             }
         }.accentColor((Color(red: 0.176, green: 0.217, blue: 0.479)))
             }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
