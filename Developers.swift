//
//  Developers.swift
//  Mine_Project2
//
//  Created by Shifa Alfaisal on 14/05/1444 AH.
//

//
//  ContentView.swift
//  Programming
//
//  Created by Shifa Alfaisal on 12/05/1444 AH.
//

import SwiftUI
struct User: Identifiable {
var id: Int
let title, value, imageName: String
}


struct DeveloperScreen: View {
    var users: [User] = [
        .init(id: 0, title: "Abdallah Mohamed" , value: "IOS Develorer" , imageName: "Aimage"),
        .init(id: 1, title: "Faisal AlThaqafi" , value: "Java Developer" , imageName: "Bimage"),
        .init(id: 2, title: "Waleed" , value: "Python - Java Developer" , imageName: "Dimage"),
        .init(id: 3, title: "Sara" , value: "IOS Developer" , imageName: "Cimage"),
    ]
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(users, id: \.id) { user in
                    HStack {
                        Image(user.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2.0))
                VStack(alignment: .leading) {
                    Text(user.title).font(.headline)
                    Text(user.value).font(.subheadline)
                }
                    }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
                }
            }
            }
        }
    }

        struct DeveloperScreen_Previews: PreviewProvider {
            static var previews: some View {
                DeveloperScreen()
            }
        }
    

