//
//  GRank.swift
//  Greener
//
//  Created by Haya alhawas on 23/08/1444 AH.
//

import SwiftUI

struct GRank: View {
    @State var showingBottomSheet = false
    var body: some View {
        
        VStack{
      
            HStack{
                Text("General Rank")
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
                        ListRank()
                            .presentationDetents([.large, .medium, .fraction(0.75)])
                            
                        
                    }//end of sheet
                    
                }
                
                
            }.padding()
        
            VStack{
                
                Image("GRank")
                    .resizable()
                    .frame(width: 309, height: 179)
                
            }
        }
        }
    
//struct BottomSheetView: View{
  //  var body: some View
    
//}

struct GRank_Previews: PreviewProvider {
    static var previews: some View {
        GRank()
            .environment(\.colorScheme, .dark)
    }
}
