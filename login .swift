//
//  login .swift
//  Mine_Project2
//
//  Created by Shifa Alfaisal on 16/05/1444 AH.
//
import SwiftUI
//testtt
//+++++++++++
import Foundation



extension UserDefaults {
    
    var LoginPageShown: Bool {
        get {
            return (UserDefaults.standard.value(forKey: "LoginPageShown") as? Bool) ?? false
            
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "LoginPageShown")
        }
    }
    
}
//// Access Shared Defaults Object
//let userDefaults = UserDefaults.standard
//
//// Read Boolean
//let value = userDefaults.bool(forKey: "myKey")
////userDefaults.set(true, forKey: "myKey")
//let defaults = UserDefaults.standard
//defaults.set(25, forKey: "Age")
//+++++++++++



struct SecureTextField: View {
    
    @State private var isSecureTextField: Bool = true
    @State private var ForgetPW: Bool = false

    @Binding var text: String
    //@State var ispresented = false

    var body: some View {
        HStack {
            if isSecureTextField {
                SecureField("Write your Password", text: $text)
            } else {
                TextField(text, text: $text)
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: isSecureTextField ? "eye.slash": "eye")
                .onTapGesture {
                    isSecureTextField.toggle()
                }
        }
        }
    }

struct login_: View {
    @State private var Email: String = ""
    @State private var Password: String = ""
    //@State var ispresented = false

    @State var toContentView = false

    @AppStorage("LoginPageShown") // UserDefaults
    var LoginPageShown: Bool = false
    @State var ispresented = false
    
    
    @State var ispresented2 = false
    @State var isModal2: Bool = false



    @State var isModal: Bool = false
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                
                //=========================================
//                VStack(spacing: 20){
//                }
//                .font(.title3)
//                //.padding()
//                .frame(width: 1000, height: 100)
//                .foregroundColor(Color.white)
//                .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                //            Spacer()
//                //=========================================
//
                VStack(alignment: .leading){
                    //-----------name--------------------------------
                    Text("Email")
                        .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                        .bold()
                    
                    // .padding()
                    //.multilineTextAlignment(.leading)
                    TextField("Write your Email", text: $Email)
                        .frame(width: 350, height: 40)
                        .foregroundColor(.black)
                        .padding([.leading], 12)
                        .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                        .cornerRadius(5)
                    //.padding()
                    //-------------------------------------------
                    //-----------Email--------------------------------
                    Text("Password")
                        .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                        .bold()
                    
                    // .padding()
                    //.multilineTextAlignment(.leading)
                
                    SecureTextField(text: $Password)

                        .frame(width: 350, height: 40)
                        .foregroundColor(.black)
                        .padding([.leading], 12)
                        .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                        .cornerRadius(5)
                    
                    //.padding()
                    //-----------Password--------------------------
                    
                    VStack {
                        Text("Forget Password?")
                            .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                            .multilineTextAlignment(.center)
                            .padding([.leading], 70)
                            .padding(30)
                        
                        
                    }
                    
                    
                    Button("Login"){
                        //===
                        
                        UserDefaults.standard.set(true, forKey: "on")
                        ispresented.toggle()
                        
                        //===
                        self.isModal = true
                    }
                    .frame(width: 350, height: 40)
                        .foregroundColor(.white)
                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                        .cornerRadius(5)
                        .padding()
//                    Button {
//                        //toContentView.toggle()
//                        UserDefaults.standard.set(true, forKey: "on")
//                        ispresented.toggle()
//                        //===
//                        self.isModal = true
//
//                    } label: {
//                        Text("Login").font(.title3).padding()
//                            .frame(width: 350, height: 40)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                            .cornerRadius(5)
//                            .padding()
//
//                    }

//                    Button {
//                        ispresented.toggle()
//
//                    } label: {
//                        Text("Next").font(.title3).padding()
//                            .frame(width: 350, height: 40)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                            .cornerRadius(5)
//                            .padding()
//                    }


                    
//                    NavigationLink(destination: HomePage1()) {
//                       Text("Login").font(.title3).padding()
////                            .navigationBarBackButtonHidden(true)///\\\\\\\\\\
//
//                        //.frame()
//                            .frame(width: 350, height: 40)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                            .cornerRadius(5)
//                            .padding()
//                    }
//
                    
                }//info vstack
                .padding()
                Spacer()
//                NavigationLink(destination: Selectpage()) {
//                    Text("Login").font(.title3).padding()
//                    //.frame()
//                        .frame(width: 350, height: 40)
//                        .foregroundColor(.white)
//                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
//                        .cornerRadius(5)
//                        .padding(-50)
//                }
                
                HStack{
                    Text("Don’t have an account?")
                        .foregroundColor(Color(red: 0.793, green: 0.853, blue: 1.001))

                    //========================================
//                    Button("Set your schedule"){
//
//                    }
//                    .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
//
//                    .sheet(isPresented: $isModal2, content: {
//
//                            Selectpage()
//
//                    })
                    //-
                    //========================================

                    NavigationLink(destination: Selectpage()) {
                        Text("Sign Up")
                            .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                            .bold()

                    }
                }//hstack
                Spacer()


            }//vs
//            .fullScreenCover(isPresented: $isModal) {
//                TabBar()
//            }

            .navigationTitle("LogIn")
            
            .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
                                , tintColor: .white)
            
        }//nav
        
            .fullScreenCover(isPresented: $isModal) {
            TabBar()
        }
        
    }//body
}




struct login__Previews: PreviewProvider {
    static var previews: some View {
        login_()
    }
}
