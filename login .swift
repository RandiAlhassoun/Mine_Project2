//
//  login .swift
//  Mine_Project2
//
//  Created by Shifa Alfaisal on 16/05/1444 AH.
//

import SwiftUI

struct SecureTextField: View {
    
    @State private var isSecureTextField: Bool = true
    @State private var ForgetPW: Bool = false

    @Binding var text: String
    
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

    
    var body: some View {
        NavigationView{
            
            VStack{
                //=========================================
                VStack(spacing: 20){
                }
                .font(.title3)
                //.padding()
                .frame(width: 1000, height: 100)
                .foregroundColor(Color.white)
                .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                //            Spacer()
                //=========================================
                
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
                    
                    
                }//info vstack
                .padding()
                Spacer()
                NavigationLink(destination: Selectpage()) {
                    Text("Login").font(.title3).padding()
                    //.frame()
                        .frame(width: 350, height: 40)
                        .foregroundColor(.white)
                        .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                        .cornerRadius(5)
                        .padding(-50)
                }
                
                HStack{
                    Text("Don’t have an account?")
                        .foregroundColor(Color(red: 0.793, green: 0.853, blue: 1.001))

                    
                    
                    NavigationLink(destination: Selectpage()) {
                        Text("Sign Up")
                            .foregroundColor(Color(red: 0.343, green: 0.514, blue: 0.877))
                            .bold()

                    }
                }//hstack
                Spacer()

            }//vs
            .navigationTitle("LogIn")
            
            .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
                                , tintColor: .white)        }
    }//body
}




struct login__Previews: PreviewProvider {
    static var previews: some View {
        login_()
    }
}
