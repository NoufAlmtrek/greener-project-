//
//  ViewC.swift
//  Greener
//
//  Created by Haya alhawas on 21/08/1444 AH.
//

import SwiftUI

struct Events: View {
    
    @State var  showingBottomSheet = false
    @State var  showingBottomSheet2 = false
    @State var  showingBottomSheet3 = false
    
    var body: some View {
        
        
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    // RoundedRectangle(cornerSize: <#T##CGSize#>)
                    //    .foregroundColor(<#T##color: Color?##Color?#>)
                    HStack{
                        Image("Plant")
                            .resizable()
                            .frame(width: 55.0, height: 55.0)
                        Text("Events")
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        //   .navigationBar  Title("Ranks", displayMode: .large)
                        
                    }
                    .background(Color("Dgreen"))
                }
                Spacer()
                    .padding(.bottom,69.0)
                VStack{
                    ZStack{
                        VStack{
                            
                            //   NavigationLink(destination: <#T##() -> View#>, label: <#T##() -> View#>)
                            
                            HStack(spacing: 10){
                                Button (action: {
                                    showingBottomSheet.toggle()
                                }, label:
                                            {
                                    
                                    RoundedRectangle( cornerRadius:  10)
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                    
                                        .overlay(
                                            Text("Recycling")
                                                .fontWeight(.semibold)
                                                .padding(.leading, -150.0)
                                                .foregroundColor(.white))
                                    
                                        .overlay(
                                            Text("Now")
                                                .foregroundColor(Color("Color 1"))
                                                .padding(.leading, 300))
                                        .overlay(
                                            Text("14.7 km")
                                                .fontWeight(.light)
                                                .padding(.leading, 50)
                                                .foregroundColor(.white))
                                })
                                .sheet (isPresented: $showingBottomSheet){
                                    Eventsheet2()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                            }
                            
                            
                            
                            
                            HStack (spacing: 30)  {
                                Button (action: {
                                    showingBottomSheet2.toggle()
                                }, label:
                                            {
                                    RoundedRectangle( cornerRadius:  10)
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                        .overlay(
                                            Text("Let's plant")
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                                .padding(.leading, -150.0))
                                    
                                        .overlay(
                                            Text("6:00")
                                                .foregroundColor(Color("Color 1"))
                                                .padding(.leading, 300))
                                        .overlay(                                Text("18.3 km")
                                            .fontWeight(.light)
                                            .foregroundColor(.white)
                                            .padding(.leading, 50))
                                        .padding(.top,12)
                                })
                                .sheet (isPresented: $showingBottomSheet2){
                                    Eventsheet()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                                
                            }
                            
                            
                            
                            HStack (spacing: 15){
                                Button (action: {
                                    showingBottomSheet.toggle()
                                }, label:
                                            {
                                    RoundedRectangle( cornerRadius:  10)
                                    
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                        .overlay(
                                            
                                            Text("The Spring")
                                                .foregroundColor(.white)
                                                .fontWeight(.semibold)
                                            
                                                .padding(.leading, -150.0))
                                    
                                        .overlay(
                                            Text("12:00")
                                                .foregroundColor(Color("Color 1"))                                       .padding(.leading, 300)
                                            
                                        )
                                        .overlay(                                Text("22 km")
                                            .foregroundColor(.white)
                                            .fontWeight(.light)
                                            .padding(.leading, 50))
                                        .padding(.top,12)
                                })
                                .sheet (isPresented: $showingBottomSheet){
                                    Eventsheet()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                                
                            }
                            
                            
                            
                            HStack (spacing: 10){
                                Button (action: {
                                    showingBottomSheet.toggle()
                                }, label:
                                            {
                                    RoundedRectangle( cornerRadius:  10)
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                        .overlay(
                                            Text("Environment")
                                                .foregroundColor(.white)
                                                .fontWeight(.semibold)
                                                .padding(.leading, -150.0))
                                    
                                    
                                        .overlay(
                                            Text("16:00")
                                                .foregroundColor(Color("Color 1"))
                                            
                                                .padding(.leading, 300))
                                        .overlay(                                Text("30.5 km")
                                            .foregroundColor(.white)
                                            .fontWeight(.light)
                                            .padding(.leading, 50))
                                        .padding(.top,12)
                                })
                                .sheet (isPresented: $showingBottomSheet){
                                    Eventsheet()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                                
                            }
                            
                            
                            
                            
                            HStack (spacing: 10){
                                Button (action: {
                                    showingBottomSheet.toggle()
                                }, label:
                                            {
                                    RoundedRectangle( cornerRadius:  10)
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                        .overlay(
                                            
                                            Text("Our life")
                                                .foregroundColor(.white)
                                                .fontWeight(.semibold)
                                                .padding(.leading, -150.0))
                                        .overlay(
                                            Text("Tomorrow")
                                                .foregroundColor(.gray)
                                            
                                                .padding(.leading, 250))
                                        .overlay(                                Text("33.9 km")
                                            .foregroundColor(.white)
                                            .fontWeight(.light)
                                            .padding(.leading, 50))
                                    
                                    
                                        .padding(.top,12)
                                })
                                .sheet (isPresented: $showingBottomSheet){
                                    Eventsheet()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                                
                            }
                          
                            
                            
                            
                            
                            
                            HStack (spacing: 10){
                                Button (action: {
                                    showingBottomSheet.toggle()
                                }, label:
                                            {
                                    
                                    RoundedRectangle( cornerRadius:  10)
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                        .overlay(
                                            
                                            Text("Breath")
                                                .foregroundColor(.white)
                                                .fontWeight(.semibold)
                                                .padding(.leading, -150.0))
                                        .overlay(
                                            Text("Tomorrow")
                                                .foregroundColor(.gray)
                                                .padding(.leading, 250))
                                        .overlay(                                Text("55.7 km")
                                            .foregroundColor(.white)
                                            .fontWeight(.light)
                                            .padding(.leading, 50))
                                        .padding(.top,12)
                                    
                                })
                                .sheet (isPresented: $showingBottomSheet){
                                    Eventsheet()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                                
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            HStack (spacing: 10){
                                Button (action: {
                                    showingBottomSheet.toggle()
                                }, label:
                                            {
                                    RoundedRectangle( cornerRadius:  10)
                                        .fill(Color("Dgreen"))
                                        .frame(width: 350, height: 50)
                                        .overlay(
                                            
                                            Text("Cooperation")
                                                .foregroundColor(.white)
                                                .bold()
                                                .font(.title3)
                                                .padding(.leading, -150.0))
                                        .overlay(
                                            Text("Monday")
                                                .foregroundColor(.gray)
                                            
                                                .padding(.leading, 280))
                                    
                                        .overlay(                                Text("77.3 km")
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                            .padding(.leading, 50))
                                        .padding(.top,12)
                                    
                                    
                                    
                                })
                                .sheet (isPresented: $showingBottomSheet){
                                    Eventsheet()
                                        .presentationDetents([.large, .medium,.fraction(0.75)])
                                }
                                
                            }
                            
                            
                            
                            
                            
                            
                        }
                        .padding(.bottom,150)
                        
                    }
                }
            }  .padding(.bottom,-30)
            HStack(spacing:150 ){
                Button {
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .background(Color("Color 2"))
                            .opacity(0.1)
                        Text("Sort")
                            .foregroundColor(Color("Color 1"))
                        
                        
                    }
                    .frame(width: 90.0, height: 30.0)
                    .cornerRadius(5)
                }
                
                
                
                //
                .padding(.top ,-295 )
                .padding(.leading,-150)
                
            }
            
            
            
            HStack(spacing:150 ){
                
                Button (action: {
                    
                    showingBottomSheet3.toggle()
                }, label:
                            {
                    ZStack{
                        Rectangle()
                            .background(Color("Color 2"))
                            .opacity(0.1)
                        
                        Text("Create +")
                        .foregroundColor(Color("Color 1"))}
                    .frame(width: 90.0, height: 30.0)
                    .cornerRadius(5)
                    
                })
                .sheet (isPresented: $showingBottomSheet3, content : { Greener.sheet()
                        .presentationDetents([.fraction(0.89)])
                        .presentationDragIndicator(.visible)
                    
                }).padding(.top ,-295 )
                    .padding(.leading,250)
            }
        }
    }
    
    
    
    
    //.navigationViewStyle(.stack)
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environment(\.colorScheme,.dark)
        }
    }
    
    
    
}

