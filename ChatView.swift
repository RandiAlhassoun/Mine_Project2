//
//  ChatView.swift
//  Mine_Project2
//
//  Created by نوف بخيت الغامدي on 21/05/1444 AH.
//

import SwiftUI

struct ChatView: View {
    
    @State private var messageText = ""
    @State var messages: [String] = ["Hi how can I helpe you?"]
    
    var body: some View {
        //NavigationView {
            VStack {
                
                HStack {
                    // .navigationTitle("Sign UP")
                      // .navigationBarColor(backgroundColor: UIColor(red: 0.18, green: 0.22, blue: 0.48, alpha: 1.00)
                    //   , tintColor: .white)
                    Text("Abdallah Mohamed")
                        .font(.title3)
                        .foregroundColor(Color.white)
                        .frame(width: 1000, height: 50)
                        .background(Color(red: 0.178, green: 0.216, blue: 0.479))

                }
                
                ScrollView {
                    ForEach(messages, id: \.self) { message in
                        // If the message contains [USER], that means it's us
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            // User message styles
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color(red: 0.176, green: 0.217, blue: 0.479))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        } else {
                            
                            // Bot message styles
                            HStack {
                                Text(message)
                                    .padding()
                                    .background(Color(red: 0.895, green: 0.914, blue: 0.948))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                        }
                        
                    }.rotationEffect(.degrees(180))
                }
                .rotationEffect(.degrees(180))
                .background(Color(red: 0.967, green: 0.977, blue: 0.99))
                
                // Contains the Message bar
                HStack {
                    TextField("Input Text", text: $messageText)
                        .padding()
                        .background(Color(red: 0.967, green: 0.977, blue: 0.99))
                        .cornerRadius(10)
                        .onSubmit {
                            sendMessage(message: messageText)
                        }
                    
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .foregroundColor(Color(red: 0.178, green: 0.216, blue: 0.479))
                    }
                    .font(.system(size: 26))
                    .padding(.horizontal, 10)
                }
                .padding()
            }
                                //
            //.navigationTitle("Abdallah Mohamed")

        //}
                                           }
        
        func sendMessage(message: String) {
            withAnimation {
                messages.append("[USER]" + message)
                self.messageText = ""
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        messages.append(getBotResponse(message: message))
                    }
                }
            }
        }
    
    
    
    
    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
}
