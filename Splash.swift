//
//  Splash.swift
//  Mine_Project2
//
//  Created by Wedad Almehmadi on 11/12/2022.
//

import SwiftUI

struct Splash: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            onboarding()
        } else {
            VStack {
                VStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 142, height: 154)
                        .scaledToFit()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
