//
//  ContentView.swift
//  chat
//
//  Created by WadiahAlbuhairi on 24/05/1444 AH.
//
//

import SwiftUI
struct Data: Identifiable {
    var id = UUID()
    var Title: String
    var Subtitle: String
    var imageName: String
    var developerType : Develpers
   

}


//struct User: Identifiable {
//var id: Int
//let title, value, imageName: String
//}
struct chat0: View {

    
    var MData: [Data] = [
        
        .init(Title: "Abdallah mohamed   ", Subtitle: "Perfect! Thank you", imageName: "Swiftim" , developerType: .ios),
        
      
            .init(Title: "Faisal althaqafi            ", Subtitle: "Send me the problem     ", imageName: "javaim" , developerType : .ios),
        
        
            .init(Title: "Waleed", Subtitle: "We will schedule ...            ", imageName: "Pythoim", developerType: .ios),
        
        
            .init(Title: "Sara", Subtitle: "What kind of error            ", imageName: "Swiftim" , developerType: .ios),
        
        
    ]
    
    var columns = Array(repeating: GridItem(.flexible()), count: 1)
    @State var text = ""
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
                //                .font(.title3)
                //                //.padding()
                //                .frame(width: 1000, height: 120)
                //                .foregroundColor(Color.white)
                //                .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                //                .padding(.bottom, 5.0)
                
                
                //                HStack{
                //                    VStack(alignment: .leading, spacing: 8.0){
                //                        Text("Developers In")
                //                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                //
                //                        HStack(spacing: 8.0){
                //                            Button("All         "){
                //
                //                                isAllingClicke.toggle()
                //                            }
                //                            .buttonStyle(.bordered)
                //                            .foregroundColor(Color(.black))
                //                            .background(isAllingClicke ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor
                //                                .systemBackground) )
                //                            .cornerRadius(5)
                //
                //                            Button("Java      "){
                //
                //                                isJavaClicked.toggle()
                //                            }
                //                            .buttonStyle(.bordered)
                //                            .foregroundColor(Color(.black))
                //                            .background(isJavaClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                //                            .cornerRadius(5)
                //
                //                            Button("IOS       "){
                //
                //                                isIosClicked.toggle()
                //                            }
                //                            .buttonStyle(.bordered)
                //                            .foregroundColor(Color(.black))
                //                            .background(isIosClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                //                            .cornerRadius(5)
                //                            Button("Python"){
                //
                //                                iscClicked.toggle()
                //                            }
                //                            .buttonStyle(.bordered)
                //                            .foregroundColor(Color(.black))
                //                            .background(iscClicked ? Color(red: 0.793, green: 0.853, blue: 1.001) : Color(UIColor.systemBackground) )
                //                            .cornerRadius(5)
                //                        }
                //                    }
                //
                //                }
                
                .padding([.leading], 0)
                
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(MData.filter({"\($0)".contains(text) || text.isEmpty})) { i in
                            
                                HStack (alignment: .center) {
                                    Image(i.imageName)
                                        .resizable()
                                        .frame(width: 50, height: 50, alignment: .leading)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color(red: 0.176, green: 0.217, blue: 0.479), lineWidth: 2.0))
                                    
                                    VStack(alignment: .leading) {
                                        Text(i.Title).font(.headline)
                                            .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                                            .bold()
                                        
                                        Text(i.Subtitle).font(.subheadline)
                                            .foregroundColor(Color.gray)
                                    }
                                 
                                 
                                    HStack{
                                                
                                        Text("4:00pm")
                                           
                                            .font(.caption)
                                            .fontWeight(.light)
                                            .padding(.leading, 82.0)
                                           
                                        

                                    }
                                    .padding(.trailing, 0)
                                    
                                    
                                    
                                }.padding(.init(top: 14, leading: 0, bottom: 8, trailing: 0))
                                
                                Divider()
                              
                        }
                        
                        //                                .background(Color.gray)
                        
                    }
                    
                }
            }
            .padding(.horizontal)
            
            .navigationTitle("Chat")
            
            .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
                                , tintColor: .white)
        }
        //                        .navigationTitle("chat")
        //
        //                        .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
        //                                            , tintColor: .white)
        
//        TabView {
//            Text("")
//                .font(.system(size: 10, weight: .bold, design: .rounded))
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//
//            Text(" ")
//                .font(.system(size: 10, weight: .bold, design: .rounded))
//                .tabItem {
//                    Image(systemName: "text.bubble.fill")
//                    Text("Chat")
//                }
//
//
//            Text("")
//                .font(.system(size: 10, weight: .bold, design: .rounded))
//                .tabItem {
//                    Image(systemName: "person.crop.circle")
//                    Text("Profile")
//                }
//                    }
        
    }
    
    
    
    
}

struct chat_Previews: PreviewProvider {
    static var previews: some View {
        chat0()
    }
}


//struct MyData: Identifiable {
//    var id = UUID()
//    var title: String
//    var subtitle: String
//    var imageName: String
//}
