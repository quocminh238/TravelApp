//
//  MainScreenView.swift
//  VN Travel Destinations
//
//  Created by minh on 7/22/22.
//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Nguyen Quoc Minh
  ID: s3758994
  Created  date: 20/07/2022
  Last modified: 05/08/2022
  Acknowledgement: https://www.behance.net/gallery/111883599/Travel-App?tracking_source=search_projects%7CiOS%20app%20travel%20.
*/

import SwiftUI

struct MainScreenView: View {
    
    private let categories = ["Popular", "Northern Vietnam", "Central Vietnam", "Southern Vietnam"]
    @State private var selectedIndex:Int = 0
    
    var body: some View {
        NavigationView{
            VStack{
                
                AppBarView()

                
                ScrollView{
                //Header
                    //Display CategoryView
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0 ..< categories.count) {i in
                                CategoryView(isActive: i == selectedIndex, text: categories[i])
                                    .onTapGesture{
                                        selectedIndex = i
                                    }
                            }
                        }
                    }.padding()
                    

                    
                //Body
                    VStack(alignment: .leading){
                        
                        //Display Popular Destinations on Screen
                        DestinationPopular() 
                            .padding(.leading, 10)
                        
                        //Display section Recommended and View All
                        HStack(alignment: .center, spacing: 124){
                            Text("Recommended")
                                .font(.system (size:24))
                                .bold()
                            
                            Text("View All")
                                .font(.system(size: 18))
                                
                            
                        }
                        .padding(EdgeInsets(top: 20, leading: 36, bottom: 20, trailing: 0))
                            
                        
                        //Display Recommended Destination on Screen
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
//                            DestinationList()
                            DestinationRecommended()
                        }
                        .padding(.leading, 0)


                    }

                }

                
            }
        }
        
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}

struct CategoryView:View{
    
    let isActive:Bool
    let text:String
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 0){
                Text(text)
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(isActive ? Color.pink: Color.black.opacity(0.5))
                
                if (isActive) {
                    Color.pink
                        .frame(width: 15, height: 2)
                        .clipShape(Capsule())
                        
                }
            }
            .padding(.trailing)
        }
    }
    
}
