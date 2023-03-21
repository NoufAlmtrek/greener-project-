//
//  SplashView.swift
//  Greener
//
//  Created by Haya alhawas on 29/08/1444 AH.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()//اسم الصفحة اللي بيودي لها
            } else {
                
                Rectangle().fill(LinearGradient(gradient:.init(colors: [Color("Color 1"), .white]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
                
                VStack{
                    Image(systemName: "leaf.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 130)
                        .foregroundColor(Color.white)
                    //.foregroundColor(Color("AccentColor"))
                    Text("Greener")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }}
    

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
        .environment(\.colorScheme, .dark)
}
}

