/*
 * Created By: Wadiah Albuhairi
 * ~~ WAKU WAKU ~~
 */

import SwiftUI

struct EditProfileDeveloperContentView: View {
    @available(iOS 14.0, *)
    var body: some View {
        
        ZStack(){
            // Background Color
            Color.white.ignoresSafeArea(.all)
            
            if UIScreen.main.bounds.height > 800{
                // Rendering The EditProfile Struct
                EditProfileDeveloper()
            }
            else{
                // If the page is larger than the phone then, create a ScrollView to scroll
                ScrollView(.vertical, showsIndicators: false) {
                    
                    EditProfileDeveloper()
                }
            }
        }
    }
}
struct EditProfileDeveloperContentView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileDeveloperContentView()
    }
}

struct EditProfileDeveloper : View {
    // Variables
    @State var mail = ""
    @State var oldPass = ""
    @State var newPass = ""
    @State var verifyNewPass = ""
    @State var Editfield = ""
    @State var EditPIO: String = ""
    
//    var LoginPageShown: Bool = false
    @State var ispresented = false

    @State var isModal: Bool = false
    
    var body : some View{
        
        VStack{
            // Clickable Heart Image <3
//            Button(action: {
//                
//            })
//            {
//                Image("IMG_0002")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 129.0, height: 129.0)
//                    .clipped()
//                    .cornerRadius(131)
//                    .padding(.top, 70.0)
//            }
            
            VStack(spacing : 50){
                
                VStack(){
                    // Change Email Address TextField
                    VStack(alignment: .leading){
                        //-----------name--------------------------------
                        
                        
                        
                        
                        HStack(alignment: .firstTextBaseline){
                            Image(systemName: "envelope.fill")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                            Text("Change Email")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                               // .padding()
                                //.multilineTextAlignment(.leading)
                        
                            
                        }.padding(.vertical, 0)
                        
                        TextField("Change Email", text: .constant(""))
                            .frame(width: 350, height: 40)
                            .foregroundColor(.black)
                            .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            .cornerRadius(5)
                        
                            //.padding()
                        //-------------------------------------------
                        //-----------Email--------------------------------
                        
                        HStack(alignment: .firstTextBaseline){
                            Image(systemName: "lock.fill")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                                .foregroundColor(.black)
                            Text("Old Password")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                               // .padding()
                                //.multilineTextAlignment(.leading)
                        
                            
                        }.padding(.vertical, 0)
                        
                        TextField("Old Password", text: .constant(""))
                            .frame(width: 350, height: 40)
                            .foregroundColor(.black)
                            .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            .cornerRadius(5)
                          //.padding()
                        //-----------Password--------------------------------
                        
                        HStack(alignment: .firstTextBaseline){
                            Image(systemName: "lock.fill")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                                .foregroundColor(.black)
                            Text("New Password")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                               // .padding()
                                //.multilineTextAlignment(.leading)
                        
                            
                        }.padding(.vertical, 0)
                        
                        TextField("New Password", text: .constant(""))
                            .frame(width: 350, height: 40)
                            .foregroundColor(.black)
                            .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            .cornerRadius(5)
                            //.padding()
                        //-----------Confirm Password-------------------------
                        
                        HStack(alignment: .firstTextBaseline){
                            Image(systemName: "pencil")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                            Text("Edit field")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                               // .padding()
                                //.multilineTextAlignment(.leading)
                        
                            
                        }.padding(.vertical, 0)
                        
                        TextField("Edit field", text: .constant(""))
                            .frame(width: 350, height: 40)
                            .foregroundColor(.black)
                            .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            .cornerRadius(5)
                        
                        HStack(alignment: .firstTextBaseline){
                            Image(systemName: "pencil")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                                .foregroundColor(.black)
                            Text("Edit Bio")
                                .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                               // .padding()
                                //.multilineTextAlignment(.leading)
                        
                            
                        }.padding(.vertical, 0)
                        
                        TextField("Edit Bio", text: .constant(""))
                            .frame(width: 350, height: 40)
                            .foregroundColor(.black)
                            .background(Color(red: 0.933, green: 0.933, blue: 0.938))
                            .cornerRadius(5)
                        
                    }//info vstack
                    .padding(.leading, 0.0)
                    Spacer()
                
                    
                    
                   
            
                    
                    
                    
                    
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                .padding(.bottom, 40)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top, 40)
                
                
                
                
                
                
                
                
                
                //
                //                // SAVE Button
                
                VStack(spacing: 300){
                    Button(action: {
                        
                    }) {
                        
                        Text("SAVE")
                            .foregroundColor(.white)
                        
                            .padding(.vertical,10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                        
                        
                    }
                    .font(.title3).padding()
                     //.frame()
                         .frame(width: 350, height: 40)
                         .foregroundColor(.white)
                         .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                         .cornerRadius(5)
                         .padding()
                    
                    .cornerRadius(5)
                    .offset(y: -90)
                    .padding(.bottom, -40)
                  
                }
                Button(action: {
                    
                    
                    UserDefaults.standard.set(false, forKey: "on")
                    ispresented.toggle()
                    
                    //===
                    self.isModal = true
                    
                }) {
                    
                    Text("Delete account")
                        .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                        .font(.title3).padding()
                         //.frame()
                             .frame(width: 350, height: 40)
                             .foregroundColor(.white)

                        .frame(width: UIScreen.main.bounds.width - 50)
                        .border(Color(red: 0.186, green: 0.237, blue: 0.507), width: 2)
                    
                    
                }
                .background(
                    
                 
                    Color.white
                    
                    
                )
                
                
                .cornerRadius(5)
                
                .offset(y: -98)
                .padding(.bottom, -20)
               
                
            }
            
      
               
        }
        
        .fullScreenCover(isPresented: $isModal) {
        TabBar()
        }
        
    }
    
    
    
    
    
}
