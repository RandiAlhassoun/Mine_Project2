/*
 * Created By: Wadiah Albuhairi
 * ~~ WAKU WAKU ~~
 */

import SwiftUI

struct EditProfileDeveloperContentView: View {
    @available(iOS 14.0, *)
    var body: some View {
        
        ZStack{
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
    
    var body : some View{
        
        VStack{
            // Clickable Heart Image <3
            Button(action: {
                
            }) {
                Image("IMG_0002")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.bottom, 2)
            }
            
            VStack(spacing: 50){
                
                VStack{
                    // Change Email Address TextField
                    HStack(spacing: 15){
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.black)
                        
                        TextField("Change Email Address", text: self.$mail)
                        
                    }.padding(.vertical, 20)
                    
                    //------ Divider -------
                    Divider()
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 15, height: 18)
                            .foregroundColor(.black)
                        
                        SecureField("Old Password", text: self.$oldPass)
                        
                        Button(action: {
                            
                        }) {
                            
                            Image(systemName: "eye")
                                .foregroundColor(.black)
                        }
                        
                    }.padding(.vertical, 10)
                    
                    Divider()
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 15, height: 18)
                            .foregroundColor(.black)
                        
                        SecureField("New Password", text: self.$newPass)
                        
                        Button(action: {
                            
                        }) {
                            
                            Image(systemName: "eye")
                                .foregroundColor(.black)
                        }
                        
                    }.padding(.vertical, 10)
                    
                    Divider()
                    HStack(spacing: 15){
                        
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 15, height: 18)
                            .foregroundColor(.black)
                        
                        TextField("Edit field", text: self.$Editfield)
                        
                        
                        
                    }.padding(.vertical, 10)
                    
                    Divider()
                    HStack(spacing: 15){
                        
                        Image(systemName: "pencil")
                            .resizable()
                            .frame(width: 15, height: 18)
                            .foregroundColor(.black)
                        
                        TextField("Edit Bio", text: self.$EditPIO)
                        
                        
                        
                    }.padding(.vertical, 20)
                    
                    
                    
                    
                }
                .padding(.vertical)
                .padding(.horizontal, 20)
                .padding(.bottom, 40)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.top, 25)
                
                
                
                
                
                
                
                
                
                //
                //                // SAVE Button
                
                VStack(spacing: 400){
                    Button(action: {
                        
                    }) {
                        
                        Text("SAVE")
                            .foregroundColor(.white)
                        
                            .padding(.vertical,10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                        
                        
                    }
                    .background(
                        
                        Color(hue: 0.64, saturation: 0.636, brightness: 0.516)
                    )
                    
                    
                    .cornerRadius(5)
                    .offset(y: -80)
                    .padding(.bottom, -40)
                    .shadow(radius: 5)
                }
                Button(action: {
                    
                }) {
                    
                    Text("Delete account")
                        .foregroundColor(Color(red: 0.186, green: 0.237, blue: 0.507))
                    
                    
                        .padding(.vertical,10)
                        .frame(width: UIScreen.main.bounds.width - 50)
                        .border(Color(red: 0.186, green: 0.237, blue: 0.507), width: 2)
                    
                }
                .background(
                    
                    Color.white
                )
                
                
                .cornerRadius(5)
                
                .offset(y: -80)
                .padding(.bottom, -20)
                .shadow(radius: 5)
            }
            
      
            
            
            
            
            
           
                TabView {
                    Text("")
                        .font(.system(size: 10, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                 
                    Text(" ")
                        .font(.system(size: 10, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "text.bubble.fill")
                            Text("Chat")
                        }
                 
                 
                    Text("")
                        .font(.system(size: 10, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                            }
        }
        
        
        
    }
    
    
    
    
    
}
