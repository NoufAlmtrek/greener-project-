//
//  SwiftUIView.swift
//  haya
//
//  Created by Noura Althemali on 23/08/1444 AH.
//

import SwiftUI

struct Numbers: View {
    let imageNames = ["Image","Image 1", "Image 2"]
    let imageNames2 = ["Image 3", "Image 4", "Image 5", "Image 6","Image 7","Image 8"]
    var body: some View {
        ScrollView {
  VStack(spacing: 32){
                       ForEach(imageNames, id: \.self) { imageName in
                           Image(imageName)
                               .resizable()
                                                  .aspectRatio(contentMode: .fit)
                                                  .frame(maxWidth: 30, maxHeight: 30)
                               
                              
                       }
  }
  .padding(.bottom, 30)
            
            VStack(spacing: 34){
                                 ForEach(imageNames2, id: \.self) { imageNames2 in
                                     Image(imageNames2)
                                         .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .frame(maxWidth: 30, maxHeight: 30)
                                         
                                        
                                 }
            }

               }
           
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers()
    }
}
