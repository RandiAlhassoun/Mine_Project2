//
//  Sign Up Developer.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI

struct Sign_Up_Developer: View {
    var body: some View {
        VStack{
            //=========================================
                        VStack(spacing: 20){
//                            Text("Sign UP")
//                                .font(.title)
//                                .multilineTextAlignment(.leading)

                    }//v
                        .font(.title3)
                        //.padding()
                        .frame(width: 1000, height: 200)
                        .foregroundColor(Color.white)
                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
            Spacer()
            //=========================================
            
            VStack(alignment: .leading){
                //-----------name--------------------------------
                Text("Inter your Name")
                   // .padding()
                    //.multilineTextAlignment(.leading)
                TextField("Write your name", text: .constant(""))
                    .frame(width: 350, height: 40)
                    .foregroundColor(.black)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                    .cornerRadius(5)
                    //.padding()
                //-------------------------------------------
                //-----------Email--------------------------------
                Text("Inter your Email")
                   // .padding()
                    //.multilineTextAlignment(.leading)
                TextField("Write your Email", text: .constant(""))
                    .frame(width: 350, height: 40)
                    .foregroundColor(.black)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                    .cornerRadius(5)
                  //.padding()
                //-----------Password--------------------------------
                Text("Inter your Password")
                   // .padding()
                    //.multilineTextAlignment(.leading)
                TextField("Write your Password", text: .constant(""))
                    .frame(width: 350, height: 40)
                    .foregroundColor(.black)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                    .cornerRadius(5)
                    //.padding()
                //-----------Confirm Password-------------------------
                Text("Inter Confirm Password")
                   // .padding()
                    //.multilineTextAlignment(.leading)
                TextField("Confirm Password", text: .constant(""))
                    .frame(width: 350, height: 40)
                    .foregroundColor(.black)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                    .cornerRadius(5)
                    //.padding()
                
                
            }//info vstack
            .padding()
            Spacer()
            NavigationLink(destination: ContentView()) {
               Text("Next").font(.title3).padding()
                //.frame()
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                    .cornerRadius(5)
                    .padding()
            }
            HStack{
            Text("You  have an account?")
                .foregroundColor(.gray)
            
            NavigationLink(destination: ContentView()) {
               Text("Login")
                    .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
            }
        }//hstack
                
        }//vs
        .navigationTitle("Sign UP")
            }//body
}

struct Sign_Up_Developer_Previews: PreviewProvider {
    static var previews: some View {
        Sign_Up_Developer()
    }
}
