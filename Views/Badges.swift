//
//  Badges.swift
//  Greener
//
//  Created by Haya alhawas on 27/08/1444 AH.
//

import SwiftUI

struct Badges: View {
    var body: some View {
        ZStack{
         Color("Background").ignoresSafeArea()
         
         
         Spacer()
         
         
         //Container
         VStack{
         header()
         ZStack{
         RoundedRectangle(cornerRadius: 12)
         .foregroundColor(Color("Dgreen"))
         .padding(.horizontal, 20.0)
         //Container End
         
         ScrollView{
         VStack{
         
         //Header Title
             
         //Text("Badges")
//         .font(.title)
//         .fontWeight(.semibold)
//         .foregroundColor(Color.white)
//         .multilineTextAlignment(.leading)
//         .padding(.trailing, 230.0)
         
         //Spacer()
        // .frame(height: 9.0)
         
             Text("Soon to get")
         .foregroundColor(Color.white)
         .multilineTextAlignment(.leading)
         .padding(.trailing, 215.0)
         .padding(.leading, 10)
        Divider()
                 .padding(.horizontal)
         Spacer()
         .frame(height: 24.2)
         
         //End of Header Title
         
         HStack{
             Badge(image: "fire", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "Help the environment by planting 5 trees to earn this badge and be a tree planter, trees give off oxygen that we need to breathe.", total: 5, completed: 3)
             Badge(image: "Image 9", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "Help the environment by planting 5 trees to earn this badge and be a tree planter, trees give off oxygen that we need to breathe.", total: 5, completed: 3)
             Badge(image: "tree", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "Help the environment by planting 5 trees to earn this badge and be a tree planter, trees give off oxygen that we need to breathe.", total: 5, completed: 3)
         }
         
         Divider()
         .padding(.horizontal)
         
         Group{
         
         HStack{
         Badge(image: "Badges3", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "Help the environment by planting 5 trees to earn this badge and be a tree planter, trees give off oxygen that we need to breathe.", total: 5, completed: 3)
         Badge(image: "Image 9", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         Badge(image: "Badge1", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         }
         
         HStack{
         Badge(image: "Image 9", title: "Soon", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         }
         
         HStack{
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 5, completed: 3)
         }
         
         HStack{
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 4, completed: 3)
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "description", total: 4, completed: 3)
         Badge(image: "Image 10", title: "Tree Planter", progressCounter: "You Planted 3 of 5 Trees", description: "blah blah", total: 4, completed: 2)
         }
         
         
         }
         
         }
         
         }
         .padding(.all, 15.0)
         }
         }
         }
         
         }
         
         
    

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
            .environment(\.colorScheme, .dark)
    }
}}
