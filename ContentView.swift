//
//  ContentView.swift
//  Greener
//
//  Created by Haya alhawas on 21/08/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
            ZStack {
                Color("Background")
                    .ignoresSafeArea()

                
                    TabView{
                        
                        MainPage()
                            .tabItem(){
                                Image(systemName: "homekit")
                                Text("Explore")
                                  
                            }
                          
                        Badges()
                            .tabItem(){
                                Image(systemName: "checkerboard.shield")
                                Text("Badges")
                                  
                            }
                        Events()
                            .tabItem(){
                                Image(systemName: "person.line.dotted.person")
                                Text("Events")
                                  
                            }
                    }
               
                  
                }
            }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environment(\.colorScheme, .dark)
            
        }
    }

/*
     NavigationView {
       List {
         ForEach(0..<25, id: \.self, content: { i in
           NavigationLink("(\(i)) Hello, world!", destination: EmptyView())
         })
       }
       .navigationBarTitle("Bar Title")
     }
     .navigationBarColor(backgroundColor: .systemTeal, tintColor: .white)
   }
 }
 view raw*/
