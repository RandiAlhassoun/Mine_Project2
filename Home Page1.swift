//  Home Page1.swift
//  Mine_Project2
//
//  Created by Shifa Alfaisal on 13/05/1444 AH.
//

import SwiftUI
struct MyData: Identifiable {
    var id = UUID()
    var Title: String
    var Subtitle: String
    var imageName: String
    var developerType : Develpers
}

enum Develpers: String {
    case all = "All"
    case java = "Java"
    case ios = "IOS"
    case python = "Python"
    
}

//struct User: Identifiable {
//var id: Int
//let title, value, imageName: String
//}
struct HomePage1: View {
    @State private var searchText = ""
    @State private var isAllingClicked = true//false
    @State private var isIosClicked = false
    @State private var isJavaClicked = false
    @State private var ispythonClicked = false
    
    var MData: [MyData] = [
        .init(Title: "Abdallah mohamed   ", Subtitle: "IOS develorer", imageName: "Swiftim", developerType: .ios),
        
            .init(Title: "Faisal althaqafi            ", Subtitle: "Java developer", imageName: "javaim", developerType: .java),
        
        
            .init(Title: "Waleed", Subtitle: "Paython developer            ", imageName: "Pythoim", developerType: .python),
        
        
            .init(Title: "Sara", Subtitle: "IOS develorer                   ", imageName: "Swiftim", developerType: .ios),
        
        
    ]
    
    var columns = Array(repeating: GridItem(.flexible()), count: 1)
    @State var text = ""
    @State var selectedDeveloper : Develpers = .all
    
    @State var toContentView = false

    
    var body: some View {
        NavigationView {
            
            VStack{
                //=========================================
                ZStack{
                    //                    HStack {
                    //                    Text("Explore").padding()
                    //                        .bold()
                    //                        .font(.title)
                    //                }
                    //                        Spacer()
                }

                
                VStack(alignment: .leading){
                    SearchBar(text: $text)
                    
                    
                    VStack(alignment: .leading, spacing: 8.0){
                        Text("Developers In")
                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                            .padding([.leading], 10)
                        
                    }}
                HStack(spacing: 8.0){
                    Button("All         "){
                        selectedDeveloper = .all
                        isAllingClicked.toggle()
                        isIosClicked = false
                        isJavaClicked = false
                        ispythonClicked = false
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(Color(.black))
                    .background(isAllingClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor
                        .systemBackground) )
                    .cornerRadius(5)
                    
                    Button("Java      "){
                        selectedDeveloper = .java
                        isAllingClicked = false
                        isIosClicked = false
                        isJavaClicked.toggle()
                        ispythonClicked = false
                        
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(Color(.black))
                    .background(isJavaClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                    .cornerRadius(5)
                    
                    Button("IOS       "){
                        selectedDeveloper = .ios
                        isAllingClicked = false
                        isIosClicked.toggle()
                        isJavaClicked = false
                        ispythonClicked = false
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(Color(.black))
                    .background(isIosClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                    .cornerRadius(5)
                    Button("Python"){
                        selectedDeveloper = .python
                        isAllingClicked = false
                        isIosClicked = false
                        isJavaClicked = false
                        ispythonClicked.toggle()
                        //
                    }
                    .buttonStyle(.bordered)
                    .foregroundColor(Color(.black))
                    .background(ispythonClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                    .cornerRadius(5)
                }
                .padding([.leading], 0)
                
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                       // HStack{
                       // VStack{
                            
                        ForEach(MData.filter({"\($0)".contains(text) || text.isEmpty})) { i in
//                            Button {
//
//                            } label: {
//                                Text("Next").font(.title3).padding()
//                            }
//
                            if selectedDeveloper == .all {
                                HStack (alignment: .center) {
                                    Image(i.imageName)
                                        .resizable()
                                        .frame(width: 50, height: 50, alignment: .leading)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color(red: 0.176, green: 0.217, blue: 0.479), lineWidth: 2.0))
                                    HStack{
                                    VStack(alignment: .leading) {
                                        Text(i.Title).font(.headline)
                                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                                            .bold()
                                        
                                        Text(i.Subtitle).font(.subheadline)
                                            .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                                    }

                                        //Text("Next")
                                    
                                        Spacer(minLength:99)
           //=========================================
                                        NavigationLink(destination: ProfileDetails()) {
                                            
                                            Image(systemName: "chevron.forward")

                                        }
                                        

                                    }//H
                                
                                }.padding(.init(top: 14, leading: 0, bottom: 8, trailing: 10))
                                Divider()
                            } else {
                                if i.developerType == selectedDeveloper {
                                    HStack (alignment: .center) {
                                        Image(i.imageName)
                                            .resizable()
                                            .frame(width: 50, height: 50, alignment: .leading)
                                            .clipShape(Circle())
                                            .overlay(Circle().stroke(Color(red: 0.176, green: 0.217, blue: 0.479), lineWidth: 2.0))
                                        HStack{
                                        VStack(alignment: .leading) {
                                            Text(i.Title).font(.headline)
                                                .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                                                .bold()
                                            
                                            Text(i.Subtitle).font(.subheadline)
                                                .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                                        }
                                            Spacer(minLength:99)

                                            NavigationLink(destination: ProfileDetails()) {
                                                
                                                Image(systemName: "chevron.forward")

                                            }
                                    }//H
                                    }.padding(.init(top: 14, leading: 0, bottom: 8, trailing: 10))
                                    Divider()
                                }
                            }
                            
//                            Button {
//
//                            } label: {
//                                Text("Next").font(.title3).padding()
//                            }
                    
                        }
                    //}//v
                        //                                .background(Color.gray)
                        
                    }
                    
                }
            }
//            .fullScreenCover(isPresented: $toContentView) {
//                ProfileDetails()
//            }
            .padding(.horizontal)
            
            .navigationTitle("Explore")
            
            .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
                                , tintColor: .white)
        }
        //                        .navigationTitle("Explore")
        //
        //                        .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
        //                                            , tintColor: .white)
    }
    
    
    
}



extension View {
    func navigationBarColor(backgroundColor: UIColor, tintColor: UIColor) -> some View {
        self.modifier(NavigationBarColor(backgroundColor: backgroundColor, tintColor: tintColor))
    }
}


struct HomePage1_Previews: PreviewProvider {
    static var previews: some View {
        HomePage1()
    }
}


//struct MyData: Identifiable {
//    var id = UUID()
//    var title: String
//    var subtitle: String
//    var imageName: String
//}
