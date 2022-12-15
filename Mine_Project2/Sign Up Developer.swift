//
//  Sign Up Developer.swift
//  Mine_Project2
//
//  Created by Rand Alhassoun on 07/12/2022.
//

import SwiftUI
import CloudKit


struct Sign_Up_Developer: View {
    
    @State private var isJavaClicked = false
    @State private var isSwiftClicked = false
    @State private var isPythonClicked = false
    @State private var isOtherClicked = false
    
    //    @State private var password = ""
    //    @State private var wrongPassword: Float  = 0
    //    @State private var passwordConfirm = ""
    //    @State private var wrongPasswordConfirm: Float  = 0
        
        @State  var Name = ""
        @State  var Email = ""
        @State private var password = ""
        @State private var passwordConfirm = ""
        @State  var Bio = ""
        //@State  var Field = ""
        //@State  var Years = 0
    
    //--------dropDown-------------
    @State var Years = ""
    var placeholder = "Years"//Working Hours
    var dropDownList = ["1","2","3","4","5","6","7","8","9","10","10+"]
    //-----------------------------
    //--------dropDown-------------
    @State var Field = ""
    var placeholder2 = "Field"//Working Hours
    var dropDownList2 = ["IOS","Python","Java"]
    //-----------------------------


    

        @State var toContentView = false
        
        var body: some View {
            ScrollView{
                
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
                    Text("Inter your Name").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                        .bold()

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
                    Text("Inter your Email").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                        .bold()

                       // .padding()
                        //.multilineTextAlignment(.leading)
                    TextField("Write your Email", text:$Email)
                        .frame(width: 350, height: 40)
                        .foregroundColor(.black)
                        .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                        .cornerRadius(5)
                      //.padding()  //-----------Password--------------------------------
                    
                    //=============================================
                    
                    //=============================================
                    Text("Inter your Password").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                        .bold()
                     
                    
                    
                        SecureTextField(text: $password)

                            .frame(width: 350, height: 40)
                            .foregroundColor(.black)
                            .padding([.leading], 12)
                            .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            .cornerRadius(5)
//
//                    SecureField("Inter your Password", text: $password)
//                        .padding()
//                        .frame(width: 350, height: 40)
//                        .foregroundColor(.black)
//                        .background(Color(red: 0.933, green: 0.933, blue: 0.938))
//                        .cornerRadius(5)
//
                    
                    //-----------Confirm Password-------------------------
                    Text("Inter Confirm Password").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                        .bold()
                    
                    SecureTextField(text: $passwordConfirm)

                        .frame(width: 350, height: 40)
                        .foregroundColor(.black)
                        .padding([.leading], 12)
                        .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                        .cornerRadius(5)
//                
//                SecureField("Inter Confirm Password", text: $passwordConfirm)
//                    .padding()
//                    .frame(width: 350, height: 40)
//                    .foregroundColor(.black)
//                    .background(Color(red: 0.933, green: 0.933, blue: 0.938))
//                    .cornerRadius(5)

                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading){
                           
                            //-----------Field--------------------------------
                            Text("Field of interest").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                                .bold()

                            
                            Menu {
                                       ForEach(dropDownList2, id: \.self){ client in
                                           Button(client) {
                                               self.Field = client
                                           }
                                       }
                                   } label: {
                                       VStack(spacing: 5){
                                           HStack{
                                               Text(Field.isEmpty ? placeholder2 : Field)
                                                   .foregroundColor(Field.isEmpty ? .gray : .black)
                                               Spacer()
                                               Image(systemName: "chevron.down")
                                                   .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                                                   .font(Font.system(size: 15, weight: .bold))
                                           }
                                           .padding(.horizontal)
                                           Rectangle()
                                               .fill(Color(red: 0.176, green: 0.217, blue: 0.479))
                                               .frame(height: 3)
                                           
                                       }
                                   }
                                   .padding()
                                   .frame(width: 350, height: 40)
                                   .foregroundColor(.black)
                                   .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                                   .cornerRadius(5)
                            
//
                            //-----------Years--------------------------------
                            Text("Years of Experience").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                                .bold()


                            Menu {
                                       ForEach(dropDownList, id: \.self){ client in
                                           Button(client) {
                                               self.Years = client
                                           }
                                       }
                                   } label: {
                                       VStack(spacing: 5){
                                           HStack{
                                               Text(Years.isEmpty ? placeholder : Years)
                                                   .foregroundColor(Years.isEmpty ? .gray : .black)
                                               Spacer()
                                               Image(systemName: "chevron.down")
                                                   .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                                                   .font(Font.system(size: 15, weight: .bold))
                                           }
                                           .padding(.horizontal)
                                           Rectangle()
                                               .fill(Color(red: 0.176, green: 0.217, blue: 0.479))
                                               .frame(height: 3)
                                           
                                       }
                                   }
                                   .padding()
                                   .frame(width: 350, height: 40)
                                   .foregroundColor(.black)
                                   .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                                   .cornerRadius(5)
                            
                            //-----------Email--------------------------------
                            Text("About your selfe").foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                                .bold()

                               // .padding()
                                //.multilineTextAlignment(.leading)
                            TextField("Write About your selfe", text: $Bio)
                                .padding(.bottom, 80.0)
                                .padding()
                                .frame(width: 350, height: 100)
                                .foregroundColor(.black)
                                .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                                .cornerRadius(5)
                            

                            
                                
                              //.padding()
                            
                            
                        }//info vstack
                        
            
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
                    AddUserDeveloper(Name : Name , Email : Email ,password : password, passwordConfirm : passwordConfirm, Bio : Bio , Field : Field, Years : Years)
                } label: {
                    Text("Next").font(.title3).padding()
                        .frame(width: 350, height: 40)
                        .foregroundColor(.white)
                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                        .cornerRadius(5)
                        .padding()
                }
               
    //            NavigationLink(destination: ContentView()) {
    //               Text("Sign up").font(.title3).padding()
    //                //.frame()
    //                    .frame(width: 350, height: 40)
    //                    .foregroundColor(.white)
    //                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
    //                    .cornerRadius(5)
    //                    .padding()
    //            }
                HStack{
                Text("You  have an account?")
                    .foregroundColor(.gray)
                
                NavigationLink(destination: Selectpage()) {
                   Text("Login")
                        .foregroundColor(Color(red: 0.176, green: 0.217, blue: 0.479))
                }
            }//hstack
                    
            }//vs
            .fullScreenCover(isPresented: $toContentView) {
                TabBar()
            }
//
            .navigationTitle("Sign Up Developer")
//            .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
//            , tintColor: .white)
//

                
            }//scroll
        }//body
    func AddUserDeveloper(Name : String , Email : String , password : String , passwordConfirm : String , Bio : String , Field : String, Years : String){
        let record = CKRecord(recordType: "UserDeveloper")
        record["UserName"] = Name
        record["Email"] = Email
        record["password"] = password
        record["passwordConfirm"] = passwordConfirm
        record["passwordConfirm"] = passwordConfirm
        record["Bio"] = Bio
        record["Field"] = Field
        record["Years"] = Years
         


                                       
            CKContainer.init(identifier: "iCloud.com.exame.Mine-Project2").publicCloudDatabase.save(record){
                record, error in
                guard error == nil else{ return }
                
                toContentView.toggle()

            }
        }
    }

struct Sign_Up_Developer_Previews: PreviewProvider {
    static var previews: some View {
        Sign_Up_Developer()
    }
}
