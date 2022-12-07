//
//  Sign Up Developer 2.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI

struct Sign_Up_Developer_2: View {
    
    @State private var isEncouragingClicked = false
    @State private var isEntertainmentClicked = false
    @State private var isRelaxationClicked = false
    @State private var isHealthClicked = false
    
    @State private var isEncouraging1Clicked = false
    @State private var isEntertainment1Clicked = false
    @State private var isRelaxation1Clicked = false
    @State private var isHealth1Clicked = false
    
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
                Text("Field of interest")
                
                
               
                
                HStack{ Button("Java"){
                    
                    isEncouragingClicked.toggle()
//                    isHealthClicked = false
//                    isEntertainmentClicked = false
//                    isRelaxationClicked = false
                    
                }
                        .buttonStyle(.bordered)
                        .foregroundColor(Color(.black))
                        .background(isEncouragingClicked ? Color(red: 0.176, green: 0.217, blue: 0.479) : Color(UIColor.systemBackground) )
                        .cornerRadius(5)
                  
                    Button("IOS"){
                        
                        isEntertainmentClicked.toggle()
//                        isHealthClicked = false
//                        isRelaxationClicked = false
//                        isEncouragingClicked = false
                    }
                        .buttonStyle(.bordered)
                        .foregroundColor(Color(.black))
                        .background(isEntertainmentClicked ? Color(red: 0.176, green: 0.217, blue: 0.479) : Color(UIColor.systemBackground) )
                        .cornerRadius(5)
                }
                
                HStack{
                    Button("Relaxation" ){
                        
                        isRelaxationClicked.toggle()
//                        isHealthClicked = false
//                        isEncouragingClicked = false
//                        isEntertainmentClicked = false
                    }
                        .buttonStyle(.bordered)
                        .foregroundColor(Color(.black))
                        .background(isRelaxationClicked ? Color(red: 0.176, green: 0.217, blue: 0.479) : Color(UIColor.systemBackground) )
                        .cornerRadius(5)
                
                    Button("Health"){
                        
                        isHealthClicked.toggle()
//                        isRelaxationClicked = false
//                        isEncouragingClicked = false
//                        isEntertainmentClicked = false
                    }
                        .buttonStyle(.bordered)
                        .foregroundColor(Color(.black))
                        .background(isHealthClicked ? Color(red: 0.176, green: 0.217, blue: 0.479) : Color(UIColor.systemBackground) )
                        .cornerRadius(5)
                    
                }
                   // .padding()
//                    //.multilineTextAlignment(.leading)
//                TextField("Write your name", text: .constant(""))
//                    .frame(width: 350, height: 40)
//                    .foregroundColor(.white)
//                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
//                    .cornerRadius(5)
//                    //.padding()
                //-------------------------------------------
                //-----------Email--------------------------------
                Text("About your selfe")
                   // .padding()
                    //.multilineTextAlignment(.leading)
                TextField("Write your Email", text: .constant(""))
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
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

    }
}

struct Sign_Up_Developer_2_Previews: PreviewProvider {
    static var previews: some View {
        Sign_Up_Developer_2()
    }
}
