//
//  button.swift
//  Greener
//
//  Created by Haya alhawas on 28/08/1444 AH.
//

import SwiftUI

struct button: View {
    @Binding var isSelected: Bool
    @State var color : Color
    @State var text: String
    var body: some View {
        ZStack{
            Rectangle()
                .border( Color(red:107/255, green: 186/255, blue: 92/255))
                .frame(width: 150, height:50)
               

             
                .foregroundColor(isSelected ? color: Color("Dgree"))
                .tint(.green)
            Text(text)
                .foregroundColor(.white)
               
        }
    }
}

struct button_Previews: PreviewProvider {
    static var previews: some View {
        button(isSelected: .constant(true), color:  Color(red:107/255, green: 186/255, blue: 92/255), text: "option")
    }
}
