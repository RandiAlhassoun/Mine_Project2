
//  Home Page1.swift
//  Mine_Project2
//
//  Created by Shifa Alfaisal on 13/05/1444 AH.
//

import SwiftUI
struct DeveloperView: View {
    @State private var searchText = ""
    @State private var isAllingClicke = false
    @State private var isIosClicked = false
    @State private var isJavaClicked = false
    @State private var iscClicked = false
    
    
    var body: some View {
        if #available(iOS 16.0, *) {
           // NavigationStack {
                ZStack{
                  
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 8.0){
                            Text("Developers In")
                                .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                            
                            HStack(spacing: 8.0){
                                Button("All         "){
                                    
                                    isAllingClicke.toggle()
                                }
                                .buttonStyle(.bordered)
                                .foregroundColor(Color(.black))
                                .background(isAllingClicke ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor
                                    .systemBackground) )
                                .cornerRadius(5)
                                
                                Button("Java      "){
                                    
                                    isJavaClicked.toggle()
                                }
                                .buttonStyle(.bordered)
                                .foregroundColor(Color(.black))
                                .background(isJavaClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                                .cornerRadius(5)
                                
                                Button("IOS       "){
                                    
                                    isIosClicked.toggle()
                                }
                                .buttonStyle(.bordered)
                                .foregroundColor(Color(.black))
                                .background(isIosClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                                .cornerRadius(5)
                                Button("Python"){
                                    
                                    iscClicked.toggle()
                                }
                                .buttonStyle(.bordered)
                                .foregroundColor(Color(.black))
                                .background(iscClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                                .cornerRadius(5)
                            }
                        }
                        .padding(.bottom, 500.0)
                        
                        Spacer()
                    }
                    .padding()
                    
                    DeveloperScreen()
                        .padding(.top,100)
                }
                
                
                .navigationTitle("Explore")
                
                .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
                                    , tintColor: .white)
                
           // }
            
            .searchable(text: $searchText)
        } else {
            
            
        }
    }
}
    




extension View {
  func navigationBarColor(backgroundColor: UIColor, tintColor: UIColor) -> some View {
    self.modifier(NavigationBarColor(backgroundColor: backgroundColor, tintColor: tintColor))
  }
}
struct HomePage1_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperView()
    }
}

