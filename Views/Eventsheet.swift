//
//  Eventsheet.swift
//  Greener
//
//  Created by Haya alhawas on 28/08/1444 AH.
//

import SwiftUI

struct Eventsheet: View {
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var showAlert = false
    @State private var alertText = ""
    @State var date = Date()
    var body: some View {
        
            ZStack{
           
            Color(red: 34/255, green: 38/255, blue: 34/255)
                    .ignoresSafeArea()
                ScrollView{
                    Group{
                        Text("Event Information")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.top,50)
                            .padding(.leading,-150)
                        Button("Share"){
                            
                        } .padding(.top,-44)
                        //   .buttonStyle(.bordered)
                        
                      
                        .padding(.leading,300)
                        .foregroundColor(Color("Color 1"))
                        Divider().background(Color.green)
                            .frame(width: 535)
                        
                           
                            .padding(.leading,180)
                        Text("Let's plant")
                            .font(.title)
                            .foregroundColor(Color.white)
                          
                            .padding(.leading,-178)
                        
                        Image("event")
                            .resizable()
                            .frame(width: 360,height: 125)
                          
                    }
                    Group{
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(Color("Color 1"))
                            .padding(.leading,-180)
                            .padding(.top,20)
                        
                        Text("Orginaizer : Sara Alsalem")
                        
                            .font(.caption2)
                            .foregroundColor(Color.white)
                            .padding(.top,-18)
                            .padding(.leading,-155)
                        
                        Image(systemName: "leaf.circle")
                            .foregroundColor(Color("Color 1"))
                            .padding(.leading,-180)
                            .padding(.top,-1)
                    }
                    Group{
                        
                        Text("Out door")
                            .font(.caption2)
                            .foregroundColor(Color.white)
                            .padding(.leading,-155)
                            .padding(.top,-19)
                        
                        Image(systemName: "person.2.circle")
                            .foregroundColor(Color("Color 1"))
                            .padding(.top,-1)
                            .padding(.leading,-180)
                        
                        Text("Attendees  48")
                            .font(.caption2)
                            .foregroundColor(Color.white)
                            .padding(.top,-20)
                            .padding(.leading,-155)
                        
                        Divider().background( Color("Color 1"))
                            .frame(width: 535)
                        
                            
                            .padding(.leading,180)
                        
                        
                        DatePicker("",selection: $date)
                            .preferredColorScheme(.dark)
                        
                        //                    .frame(width: 60.0, height: 30.0)
                        //                    .background(Color("Color 1"))
                        //                    .opacity(0.2)
                        //.foregroundColor(Color.blue)
                            .padding(.top,-50)
                            .padding(.trailing,170)
                    }
                    Group{
                        
                        Text("Details")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.top,-12)
                            .padding(.leading,-180)
                        HStack{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,.")
                                .font(.caption2)
                                .foregroundColor(.white)
                                .padding(.top,1)
                                .padding(.leading,-48)
                        }
                        RoundedRectangle(cornerRadius:5)
                            .size(width: 350, height: 72)
                            .stroke( Color("Color 1"),lineWidth: 1)
                        
                        
                            .padding(.top,-23)
                            .padding(.leading,180)
                        Divider().background( Color("Color 1"))
                            .frame(width: 535)
                        
                            .padding(.top,60)
                            .padding(.leading,180)
                        
                        Text("Location")
                            .font(.title)
                            .foregroundColor(Color.white)
                            
                            .padding(.leading,-170)
                        Text("Riyadh-Alwaha")
                            .font(.caption2)
                            .foregroundColor(Color.white)
                            
                            .padding(.leading,-166)
                        Image("map")
                            .resizable()
                            .frame(width: 340,height: 150)
                            
                        Button("Book"){
                            
                        }
                        .controlSize(.large)
                        .buttonStyle(.borderedProminent)
                        .tint( Color("Color 1"))
                        .padding(.top,50)
                        
                    }
                    .scrollContentBackground(.hidden)
                    .scrollDisabled(true)
                }
        }
    
    }
    
    struct Eventsheet_Previews: PreviewProvider {
        static var previews: some View {
            Eventsheet()
        }
    }
}
