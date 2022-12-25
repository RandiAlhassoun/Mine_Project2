//
//  onboarding.swift
//  Mine_Project2
//
//  Created by Wedad Almehmadi on 14/12/2022.
//

import SwiftUI

struct onboarding: View {
    @State private var currentTab = 0
    @State var isLinkActive = false
    
    @State var toContentView = false

    var body: some View {
        //NavigationView {
            TabView(selection: $currentTab,
                    content:  {
                VStack(){
                    Text("CODER")
                        .font(.title)
                        .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                        .bold()
                        .padding(.top, -50.0)
                    VStack(){
                        Image ("learn")
                            .resizable()
                        .frame(width: 350, height: 350)}
                    .padding(.top, -50.0)
                    HStack(){
                        Text("Where You are")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.504, green: 0.534, blue: 0.687))
                            .bold()
                        Text("Learn!")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.475))
                            .bold()
                    }
                    .padding(.top, -30.0)
                    
                }.tag(0)
                VStack(){
                    Text("CODER")
                        .font(.title)
                        .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                        .bold()
                        .padding(.top, -50.0)
                    VStack(){
                        Image ("teach")
                            .resizable()
                        .frame(width: 350, height: 350)}
                    .padding(.top, -50.0)
                    HStack(){
                        Text("Where You are")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.504, green: 0.534, blue: 0.687))
                            .bold()
                        Text("Teach!")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.475))
                            .bold()
                    }
                    .padding(.top, -30.0)
                    
                }.tag(1)
                VStack(){
                    Text("CODER")
                        .font(.title)
                        .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                        .bold()
                        .padding(.top, -50.0)
                    VStack(){
                        Image ("communicate")
                            .resizable()
                        .frame(width: 350, height: 350)}
                    .padding(.top, -50.0)
                    HStack(){
                        Text("Where You are")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.504, green: 0.534, blue: 0.687))
                            .bold()
                        Text("Communicate!")
                            .font(.title2)
                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.475))
                            .bold()
                    }
                    .padding(.top, -30.0)
                    .padding(.bottom, 30.0)
                    VStack(alignment: .leading) {
//                        Button(action: {
//                            self.isLinkActive = true
//                        }) {
//                            Text("Begin")
//                        }.frame(width: 100, height: 50)
//                            .font(.title2)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                            .cornerRadius(10)
                        
                        
                        Button {
                            //AddLearner(Name : Name , Email : Email ,password : password, passwordConfirm : passwordConfirm)
                            toContentView.toggle()
                        } label: {
                            Text("Begin")
                                .frame(width: 100, height: 50)
                                                            .font(.title2)
                                                            .foregroundColor(.white)
                                                            .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                                                            .cornerRadius(10)
                            
                        }

//
//                        NavigationLink(destination: TabBar().navigationBarHidden(true)) {
//                            Text("Begin")
//                                .frame(width: 100, height: 50)
//
//                                .font(.title2)
//                                                        .foregroundColor(.white)
//                                                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                                                        .cornerRadius(10)
//
//
//                        }

                        
                        
                        
                    }
//                    .background(
//                        NavigationLink(destination: TabBar(), isActive: $isLinkActive) {
//                        }.hidden()
//                    )
                    
                    
                }.tag(2)
            }).tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                //.navigationBarHidden(true)
            


        //}//nav
        .fullScreenCover(isPresented: $toContentView) {
            TabBar()
        }
//        .navigationBarHidden(true)
    }
    }

struct onboarding_Previews: PreviewProvider {
    static var previews: some View {
        onboarding()
    }
}
