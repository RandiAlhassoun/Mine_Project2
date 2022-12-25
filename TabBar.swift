//
//  TabBar.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI

struct TabBar: View {
    
    @State var selection = 0
    @State var onBoarding = UserDefaults.standard.bool(forKey: "on")


    var body: some View {
            TabView(selection: $selection){
                
                
                HomePage1().tabItem{Image(systemName: "house")
                    Text("Explore")
                }.tag(1)
                
                chat0().tabItem{Image(systemName: "text.bubble")
                    Text("Chat")
                }.tag(2)
                
                
                
                if onBoarding {
                    //TabBar()//yes
                    
    //                Settings
                    EditProfileDeveloperContentView().tabItem{Image(systemName: "person.circle")
                        Text("Profile")
                    }

                } else {

                    //EditProfileDeveloperContentView()
                    login_().tabItem{Image(systemName: "person.circle")
                        Text("Profile")
                    }
                }

//
//                login_().tabItem{Image(systemName: "person.circle")
//                    Text("Profile")
//                }
            }.accentColor((Color(red: 0.176, green: 0.217, blue: 0.479)))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
