//
//  Ranks.swift
//  Greener
//
//  Created by Haya alhawas on 21/08/1444 AH.
//

import SwiftUI

struct Ranks: View {
    var body: some View {
           ZStack {
                Color("Background")
                    .ignoresSafeArea()
               
                
                VStack {
                    ZStack {
                        HStack{
                            Image("Plant")
                                .resizable()
                                .frame(width: 55.0, height: 55.0)
                            Text("Ranks")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                          
                            
                        }
                        .background(Color("Dgreen"))
                        
                    }
                    Spacer()
                }
               VStack(){
                   GRank()
                   
                   NRank()
               }
                
            }
        
        
        }
    
    
    
    struct ViewC_Previews: PreviewProvider {
        static var previews: some View {
            Ranks()
                .environment(\.colorScheme, .dark)
        }
    }
}
