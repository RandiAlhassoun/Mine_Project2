//
//  Sign Up Learner.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI
import CloudKit


struct Sign_Up_Learner: View {
//    @State private var password = ""
//    @State private var wrongPassword: Float  = 0
//    @State private var passwordConfirm = ""
//    @State private var wrongPasswordConfirm: Float  = 0
    
    @State  var Name = ""
    @State  var Email = ""
    @State private var password = ""
    @State private var passwordConfirm = ""

    @State var toContentView = false
    
    var body: some View {
        VStack{
            //=========================================
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
            //=========================================
            
            VStack(alignment: .leading){
                //-----------name--------------------------------
                Text("Inter your Name")
                   // .padding()
                    //.multilineTextAlignment(.leading)
               // TextField("Write your name", text: .constant(""))
                TextField("Name", text: $Name)
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
                TextField("Write your Email", text:$Email)
                    .frame(width: 350, height: 40)
                    .foregroundColor(.black)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                    .cornerRadius(5)
                  //.padding()  //-----------Password--------------------------------
                Text("Inter your Password")
                   // .padding()
                    //.multilineTextAlignment(.leading)
                
                SecureField("Inter your Password", text: $password)
                    .padding()
                    .frame(width: 350, height: 40)
                    .foregroundColor(.black)
                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                    .cornerRadius(5)
                
                
                //-----------Confirm Password-------------------------
                Text("Inter Confirm Password")
            
            SecureField("Inter Confirm Password", text: $passwordConfirm)
                .padding()
                .frame(width: 350, height: 40)
                .foregroundColor(.black)
                .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                .cornerRadius(5)
//
                //====================================================
                
                VStack(alignment: .leading){
        
                }//info vstack
//                .padding()
////                Spacer()
//                Button {
////                    AddLearner(Name : Name , Email : Email ,password : password, passwordConfirm : passwordConfirm)
//                } label: {
//                    Text("Next").font(.title3).padding()
//                }
//======================
                
            }//info vstack
            .padding()
            Spacer()
            Button {
                AddLearner(Name : Name , Email : Email ,password : password, passwordConfirm : passwordConfirm)
            } label: {
                Text("Next").font(.title3).padding()
                    .frame(width: 350, height: 40)
                    .foregroundColor(.white)
                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                    .cornerRadius(5)
                    .padding()
            }

//            HStack{
//            Text("You  have an account?")
//                .foregroundColor(.gray)
//
//            NavigationLink(destination: ContentView()) {
//               Text("Login")
//                    .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
//            }
//        }//hstack
//

            
            //            NavigationLink(destination: ContentView()) {
//               Text("Sign up").font(.title3).padding()
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
//            NavigationLink(destination: ContentView()) {
//               Text("Login")
//                    .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
//            }
//        }//hstack
                
        }//vs
        .fullScreenCover(isPresented: $toContentView) {
            ContentView()
        }
        
        .navigationTitle("Sign UP")
        .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
        , tintColor: .white)
        
        //========================================
//        func AddLearner(Name : String, Email : String , password : String , passwordConfirm : StringSign_Up_Learner){
//            let record = CKRecord(recordType: "Profile")
//            record["Name"] = Name
//            record["lastName"] = Email
//            record["major"] = password
//            record["age"] = passwordConfirm
//
//            CKContainer.init(identifier: "com.exame.Mine-Project2").publicCloudDatabase.save(record){
//                record, error in
//                guard error == nil else{
//                    print(error?.localizedDescription)
//                    return
//                }
//                Thread.sleep(forTimeInterval: 0.7)
//                toContentView.toggle()
//
//            }
//        }

    }//body
    func AddLearner(Name : String, Email : String , password : String , passwordConfirm : String){
        let record = CKRecord(recordType: "Learner")
        record["UserName"] = Name
        record["Email"] = Email
        record["password"] = password
        record["passwordConfirm"] = passwordConfirm
                                   
        CKContainer.init(identifier: "iCloud.com.exame.Mine-Project2").publicCloudDatabase.save(record){
            record, error in
            guard error == nil else{
                print(error?.localizedDescription)
                return
            }
            Thread.sleep(forTimeInterval: 0.7)
            toContentView.toggle()

        }
    }
}

struct Sign_Up_Learner_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Sign_Up_Learner()

        }
    }
}
