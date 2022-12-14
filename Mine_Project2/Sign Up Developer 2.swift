////
////  Sign Up Developer 2.swift
////  Mine_Project2
////
////  Created by Rand Alhassoun on 07/12/2022.
////
//
//import SwiftUI
//
//struct Sign_Up_Developer_2: View {
//    
//    @State private var isJavaClicked = false
//    @State private var isSwiftClicked = false
//    @State private var isPythonClicked = false
//    @State private var isOtherClicked = false
//    
//    
//    
////
////    @State private var isEncouraging1Clicked = false
////    @State private var isEntertainment1Clicked = false
////    @State private var isRelaxation1Clicked = false
////    @State private var isHealth1Clicked = false
//    
//    var body: some View {
//
//        VStack{
//            //=========================================
////                        VStack(spacing: 20){
//////                            Text("Sign UP")
//////                                .font(.title)
//////                                .multilineTextAlignment(.leading)
////
////                    }//v
////                        .font(.title3)
////                        //.padding()
////                        .frame(width: 1000, height: 200)
////                        .foregroundColor(Color.white)
////                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
////            Spacer()
//            //=========================================
//            
//            VStack(alignment: .leading){
//                //-----------name--------------------------------
//                Text("Field of interest")
//                
//                
//               
//                
//                HStack{ Button("Java"){
//                    
//                    isJavaClicked.toggle()
//                    isOtherClicked = false
//                    isSwiftClicked = false
//                    isPythonClicked = false
//                    
//                }
//                        .buttonStyle(.bordered)
//                        .foregroundColor(isJavaClicked ?Color(UIColor.systemBackground) : .black)//------
//                        .background(isJavaClicked ? Color(red: 0.343, green: 0.514, blue: 0.877) : Color(UIColor.systemBackground) )
//                        .cornerRadius(5)
//                  
//                    Button("IOS"){
//                        
//                        isSwiftClicked.toggle()
//                        isOtherClicked = false
//                        isPythonClicked = false
//                        isJavaClicked = false
//                    }
//                        .buttonStyle(.bordered)
//                        .foregroundColor(isSwiftClicked ? Color(UIColor.systemBackground) : .black )
//                        .background(isSwiftClicked ? Color(red: 0.343, green: 0.514, blue: 0.877) : Color(UIColor.systemBackground) )
//                        .cornerRadius(5)
//                }
//                
//                HStack{
//                    Button("Python" ){
//                        
//                        isPythonClicked.toggle()
//                        isOtherClicked = false
//                        isJavaClicked = false
//                        isSwiftClicked = false
//                    }
//                        .buttonStyle(.bordered)
//                        .foregroundColor(isPythonClicked ? Color(UIColor.systemBackground) : .black )
//                    
//                        .background(isPythonClicked ? Color(red: 0.343, green: 0.514, blue: 0.877) : Color(UIColor.systemBackground) )
//                        .cornerRadius(5)
//                
////                    Button("Other"){
////                        
////                        isOtherClicked.toggle()
//////                        isPythonClicked = false
//////                        isJavaClicked = false
//////                        isSwiftClicked = false
////                    }
////                        .buttonStyle(.bordered)
////                        .foregroundColor(isOtherClicked ? Color(UIColor.systemBackground) : .black)
////                        .background(isOtherClicked ? Color(red: 0.343, green: 0.514, blue: 0.877) : Color(UIColor.systemBackground) )
////                        .cornerRadius(5)
//                    
//                }
//                   // .padding()
////                    //.multilineTextAlignment(.leading)
////                TextField("Write your name", text: .constant(""))
////                    .frame(width: 350, height: 40)
////                    .foregroundColor(.white)
////                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
////                    .cornerRadius(5)
////                    //.padding()
//                //-------------------------------------------
//                //-----------Email--------------------------------
//                Text("About your selfe")
//                   // .padding()
//                    //.multilineTextAlignment(.leading)
//                TextField("Write About your selfe", text: .constant(""))
//                    .padding(.bottom, 100.0)
//                    .padding()
//                    .frame(width: 350, height: 150)
//                    .foregroundColor(.black)
//                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
//                    .cornerRadius(5)
//                
//
//                
//                    
//                  //.padding()
//                
//                
//            }//info vstack
//            .padding()
//            Spacer()
//            NavigationLink(destination: Selectpage()) {
//               Text("Next").font(.title3).padding()
//                //.frame()
//                    .frame(width: 350, height: 40)
//                    .foregroundColor(.white)
//                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                    .cornerRadius(5)
//                    .padding()
//            }
//            HStack{
//            Text("You  have an account?")
//                .foregroundColor(.gray)
//            
//            NavigationLink(destination: Selectpage()) {
//               Text("Login")
//                    .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
//            }
//        }//hstack
//                
//        }//vs
//        .navigationTitle("Sign UP")
//        .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
//        , tintColor: .white)
//    }
//}
//
//struct Sign_Up_Developer_2_Previews: PreviewProvider {
//    static var previews: some View {
//        Sign_Up_Developer_2()
//    }
//}
//
//
//
//
//struct Intrest {
//    var intrestName : String
//    var id = UUID()
//}
