//
//  ListRank.swift
//  Greener
//
//  Created by Haya alhawas on 23/08/1444 AH.
//

import SwiftUI

struct ListRank: View {
    let names = ["Sara ALsalem", "Haya Alhawas ", "shaden Alharbi","Shoug Alamri ","Nouf almtrek  ","Sultan mohamed","abdullah 881","yaser 6A"]
        var body: some View {

            VStack(alignment: .leading, spacing: 0){
        Text("General Rank")
                    .font(.title2)
                    .fontWeight(.bold)
                   
            .padding(.leading, 30)
.padding(.top, 1)
              //  Divider()
                VStack(alignment: .leading) {
                    ScrollView{
                        HStack {
                            
                            Numbers()
                                .offset(x : 28.5 , y : 53 )
                            
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
                            
                        } }              }
                //.padding(.bottom, 21)
    } .padding(.leading, 21)
                .padding(.top, 20)
                .ignoresSafeArea()     .background(Color(red: 0.13, green: 0.15, blue: 0.132))
            
    }
}

struct ListRank_Previews: PreviewProvider {
    static var previews: some View {
        ListRank()
    }
}
