//
//  ListNRank.swift
//  Greener
//
//  Created by Haya alhawas on 24/08/1444 AH.
//

import SwiftUI

struct ListNRank: View {
    let names = ["Al-Waha ", "Al-mseef ", "Al-Rabie","Al-Taeawun ","Al-Aziziyah ", "Almseef ", "AlRabie","AlTaeawun "]
        var body: some View {

            VStack(alignment: .leading, spacing: 0){
                Spacer()
        Text("Neighbourhood Rank")
                    .font(.title2)
                    .fontWeight(.bold)
                   
                    .padding(.leading, 25)
        .padding(.top, 1)

              //  Divider()
                VStack(alignment: .leading) {
                    ScrollView{
                    
                    HStack {
                        
                        NumberN()
                            .offset(x : 20.5 , y : 53 )
                        
                        List {
                            
                            ForEach(names, id: \.self) { index in
                                
                                Text("\(index)")
                                    .bold()
                                    .font(.system(size: 20))
                                    .listRowBackground(Color.clear)
                                    .padding(.vertical, 8)
                            }
                            
                            
                        }.scrollContentBackground(.hidden)
                            .scrollDisabled(true)
                        
                    }}
                }
               // .padding(.bottom, 21)
    }
            .padding(.leading, 5)
    .padding(.top, 20)
    .ignoresSafeArea()
    .background(Color(red: 0.13, green: 0.15, blue: 0.132))
            
    }
}
struct ListNRank_Previews: PreviewProvider {
    static var previews: some View {
        ListNRank()
    }
}
