//
//  NRank.swift
//  Greener
//
//  Created by Haya alhawas on 23/08/1444 AH.
//

import SwiftUI

struct NRank: View {
    @State var showingBottomSheet = false

    var body: some View {
  
VStack{
    HStack{
        Text("Neighbourhood Rank")
            .font(.title2)
            .fontWeight(.bold)
          

        Spacer()
            VStack{
                Button("Show more") {
                    showingBottomSheet.toggle()
                }
                .buttonStyle(.automatic)
            }
            .padding()
            .sheet(isPresented: $showingBottomSheet){
                ListNRank()
                    .presentationDetents([.large, .medium, .fraction(0.75)])
                    
            }
        
        }
        
        
    }.padding()

    VStack{
        Image("NRank")
            .resizable()
           .frame(width: 309, height: 179)

        
    }
}
}

struct NRank_Previews: PreviewProvider {
    static var previews: some View {
        NRank()
    }
}
