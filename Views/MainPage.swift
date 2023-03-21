//
//  MainPage.swift
//  Greener
//
//  Created by Haya alhawas on 27/08/1444 AH.
//

import SwiftUI

struct MainPage: View {
    var body: some View{
        NavigationView{
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                        .frame(height: 15.0)
                    ZStack {
                        HStack{
                            Image("Plant")
                                .resizable()
                                .frame(width: 55.0, height: 55.0)
                            Text("Haya")
                                .font(.largeTitle)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .background(Color("Dgreen"))
                                         //   .ignoresSafeArea()

                    }
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .padding(.horizontal)
                            .frame(height: 250.0)
                            .foregroundColor(Color("Dgreen"))
                        HStack{
                            Spacer()
                            ZStack{
                                Image("plant2")
                                    .resizable()
                                    .frame(width: 170, height: 200)
                                    .padding(.trailing, 15.0)
                                    .padding(.top, 59.0)
                                
                                Image("nouf")
                                    .resizable()
                                    .padding(.leading,42)
                                    .frame(width: 300,height: 250)
                            }
                            Spacer()
                            VStack{
                                Text("960 point")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding([.bottom, .trailing],-8.0)
                                  //  .padding([.bottom, .trailing], 0)
                                    .frame(height: 50.0)
                                
                                NavigationLink( destination: Ranks()){
                                    Text("Rank 47")
                                        .font(.headline)
                                        .foregroundColor(Color("AccentColor"))
                                    .padding(.bottom, 187.0)}
                                
                                // Ranks()
                            }
                            .padding(.leading,-38)
                            
                            
                        }
                        .padding(.horizontal)
                        .padding([.top, .trailing], 9.0)
                    }
                    Spacer()
                        .frame(height: 30.0)
                    HStack{
                        Text("Badges")
                        
                            .font(.title3)
                            .padding(.bottom, 25.0)
                            .padding(.top, 38.0)
                            .padding(.leading,20)
                        
                        
                        NavigationLink( destination: Badges()){
 
                            Text("Show More")
                            
                            
                                .foregroundColor(Color("AccentColor"))
                                .multilineTextAlignment(.trailing)
                                .padding(.leading, 170.0)
                                .padding(.trailing, 30.0)
                                .padding(.top, 23.0)
                               
                        }}.padding(.bottom, -20)
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .padding(.horizontal)
                            .frame(height: 200.0)
                            .foregroundColor(Color("Dgreen"))
                        HStack{
                            
                            
                            Badge(image: "Badge1", title: "tree planter", progressCounter: "", description: "you contubuted to planting ", total: 5, completed: 3)
                            Badge(image: "Image 9", title: "Waste Recycling", progressCounter: "", description: "Waste Reuse", total: 5, completed: 5)
                            Badge(image: "Badges3", title: "Maintaining clean", progressCounter: "", description: "Make the Earth clean", total: 1, completed: 5)
                            
                            
                            
                        }
                    }
                    Spacer()
                        .frame(height: 140)
                    
                    
                }
                
                
            }
            
        }
    }
    
    struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
                .environment(\.colorScheme, .dark)
        }
    }
}
