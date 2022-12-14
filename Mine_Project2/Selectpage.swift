//
//  Selectpage.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI

struct Selectpage: View {
    var body: some View {
       // NavigationView{
        VStack{
            //---------------------------------
//                        VStack(spacing: 20){
////                            Text("Sign UP")
////                                .font(.title)
////                                .multilineTextAlignment(.leading)
//
//                    }//v
//                        .font(.title3)
//                        //.padding()
//                        .frame(width: 1000, height: 200)
//                        .foregroundColor(Color.white)
//                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//            Spacer()
//            //---------------------------------
            Text("Select type of account")
                .font(.title)
                .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
            
            NavigationLink(destination: Sign_Up_Learner()) {
               Text("Learner").font(.title3).padding()
                //.frame()
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                    .cornerRadius(5)
                    .padding()
            }
            NavigationLink(destination: Sign_Up_Developer()) {
               Text("Developer").font(.title3).padding()
                //.frame()
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                    .cornerRadius(5)
                    .padding()
            }
            
                    

                
        }//vs
        .navigationTitle("Sign UP")
        .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
        , tintColor: .white)
        .navigationBarBackButtonHidden(true)
       

       // }//NavigationView{
    }//body
}

struct Selectpage_Previews: PreviewProvider {
    static var previews: some View {
        Selectpage()
    }
}
