//
//  ProfileDetails.swift
//  Mine_Project2
//
//  Created by نوف بخيت الغامدي on 21/05/1444 AH.
//

import SwiftUI

struct ProfileDetails: View {
    var body: some View {
        //NavigationView {
            
            VStack (alignment: .center, spacing: 40.0) {
                Image("Swiftim")
                    .resizable()
                    .frame(width: 105.0, height: 109.0)
                    .clipShape(Circle())
                Text("Abdallah Mohamed")
                Text("iOS Developer")
                    .foregroundColor(.gray)
                Text(" An iOS developer , I’ve been working with \n software development , for the most part developing iOS apps.\n My interests are Swift, SwiftUI, and iOS development in general.")
                    .multilineTextAlignment(.center)
                

                NavigationLink(destination: ChatView()) {
                    Text("Let's connect")
                        .frame(width: 300, height: 40)
                                             .foregroundColor(.white)
                                             .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                                             .cornerRadius(5)
                                             .padding()


                }
                
                //==================================
//                VStack {
//                    //Button(action: {
//                    if #available(iOS 16.0, *) {
//                        NavigationLink(destination: ChatView()) {
//
//                            Text("Let's connect")
//                                .foregroundColor(.white)
//                                .fontWeight(.regular)
//                                .padding(.vertical)
//                                .frame(width: UIScreen.main
//                                    .bounds.width - 100)
//
//                        }
//
//                    } else {
//                        // Fallback on earlier versions
//                        NavigationLink(destination: ChatView()) {
//                        Text("Let's connect")
//                            .foregroundColor(.white)
//                            .fontWeight(.regular)
//                            .padding(.vertical)
//                            .frame(width: UIScreen.main
//                                .bounds.width - 100)
//                        }
//
//                    }
//
//                }
                //.background( Color(red: 0.178, green: 0.216, blue: 0.479) )
//                    .cornerRadius(8) .offset(y:100) .padding(.bottom, 11.0)
                //==================================

            }
            //edit
            .navigationTitle("Profile")
            
        //}
    }
    
    
    struct ProfileDetails_Previews: PreviewProvider {
        static var previews: some View {
            ProfileDetails()
        }
    }
}
