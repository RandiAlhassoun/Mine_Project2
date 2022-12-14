////
////  Developers.swift
////  Mine_Project2
////
////  Created by Shifa Alfaisal on 14/05/1444 AH.
////
//
////
////  ContentView.swift
////  Programming
////
////  Created by Shifa Alfaisal on 12/05/1444 AH.
////
//
//import SwiftUI
//struct User: Identifiable {
//var id: Int
//let title, value, imageName: String
//    var developerType : [Develpers]
//}
//
//
//struct DeveloperScreen: View {
//    var users: [User] = [
//        .init(Title: "Abdallah mohamed   ", Subtitle: "IOS develorer", imageName: "Aimage", developerType: .ios),
//        
//            .init(Title: "Faisal althaqafi            ", Subtitle: "Java developer", imageName: "Bimage", developerType: .java),
//        
//        
//            .init(Title: "Waleed", Subtitle: "Paython developer            ", imageName: "Dimage", developerType: .python),
//        
//        
//            .init(Title: "Sara", Subtitle: "IOS develorer                   ", imageName: "Cimage", developerType: .ios),
//    ]
//    
//    var body: some View {
//        NavigationView {
//            List {
//                
//                ForEach(users, id: \.id) { user in
//                    HStack {
//                        Image(user.imageName)
//                    .resizable()
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color(red: 0.176, green: 0.217, blue: 0.479), lineWidth: 2.0))
//                VStack(alignment: .leading) {
//                    Text(user.title).font(.headline)
//                        .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
//                        .bold()
//                    Text(user.value).font(.subheadline)
//                        .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
//                }
//                    }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
//                }
//            }
//            }
//        }
//    }
//
//        struct DeveloperScreen_Previews: PreviewProvider {
//            static var previews: some View {
//                DeveloperScreen()
//            }
//        }
//    
//
