//
//  sheet.swift
//  Greener
//
//  Created by Haya alhawas on 28/08/1444 AH.
//

import SwiftUI

struct sheet: View {
  
        @State private var isSelected = false
        @State private var isSelected2 = false
        @State private var showAlert = false
        @State private var alertText = ""
        @State var date = Date()
        @State var textEditorText: String = " more details"
        var body: some View {
           
                ZStack{
                    Color(red: 34/255, green: 38/255, blue: 34/255)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView{
                    Text("Create Event")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.top,50)
                        .padding(.leading,-180)
                        Divider().background(Color.green)
                        .frame(width: 535)
                        
                    Image(systemName: "camera.on.rectangle")
                        .foregroundColor(Color.green)
                        .padding(.top,10)
                        .padding(.leading,300)
                    
                  
                    
        
                    
                    
                    Text("Description")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding(.top,-40)
                        .padding(.leading,-178)
                    Group{
                        HStack {
                            button(
                                isSelected: $isSelected,
                                color:Color(red:107/255, green: 186/255, blue: 92/255),
                                text : "in door")
                            .onTapGesture {
                                isSelected.toggle()
                                
                                if isSelected {
                                    isSelected2 = false }
                                
                                
                            }
                            
                            
                            button(
                                isSelected:$isSelected2,
                                color:Color(red:107/255, green: 186/255, blue: 92/255),
                                text : "out door")
                            .onTapGesture{
                                isSelected2.toggle()
                                
                                if isSelected2 {
                                    isSelected = false }
                                
                                
                            }
                            
                        }
                      
                        .padding(.leading,-50)
                        
                        Group{
                            
                            
                            DatePicker("",selection: $date)
                                .preferredColorScheme(.dark)
                                .padding(.top,15)
                                .padding(.trailing,320)
                            
                            Divider().background(Color.green)
                                .frame(width: 535)
                            
                                .padding(.top)
                                .padding(.leading,180)
                            
                            
                            Text("Details")
                                .font(.title)
                                .foregroundColor(Color.white)
                                
                                .padding(.leading,-180)
                            
                            
                            HStack{
                                
                                
                                TextEditor(text: $textEditorText)
                                
                               
                                    .scrollContentBackground(.hidden)
                                  
                                    .foregroundColor(.white)
                                
                                
                                    .frame( width: 364, height: 72)
                                    .background(Color("Dgreen"))
                                    .border(Color("Color 1"))
                              
                                
                                
                                   
                                
                                
                            }
                            Divider().background(Color.green)
                                .frame(width: 535)
                            
                                .padding(.top,30)
                                .padding(.leading,180)
                            Text("Location")
                                .font(.title)
                                .foregroundColor(Color.white)
                               
                                .padding(.leading,-180)
                            Text("Location")
                                .foregroundColor(Color.gray)
                                .padding(.leading,-180)
                            Image("map")
                                .resizable()
                                .frame(width: 340,height: 180)
                                .padding(.top,-10)
                        }
                        HStack{
                            Button("Create"){
                                
                            }
                          
                            
                            .tint( Color("Color 1"))
                            .frame( height:100)
                            .frame(maxWidth:.infinity)
                            
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)

                         
                            
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .scrollDisabled(true)
                }
              
            }
        
        }
        struct sheet_Previews: PreviewProvider {
            static var previews: some View {
                Greener.sheet()
            }
        }
        
    }
