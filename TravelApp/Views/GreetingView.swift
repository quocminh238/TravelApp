//
//  GreetingView.swift
//  VN Travel Destinations
//
//  Created by minh on 8/3/22.
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

struct GreetingView: View {
    @Binding var active: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image("WelcomeImage")
                .resizable()
                .frame(width: 414, height: 464, alignment: .center)
                .cornerRadius(40)
                .edgesIgnoringSafeArea(.top)
                .opacity(0.9)
            
            Text("Vietnam")
                .font(.system(size: 39))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 34)
                .opacity(0.8)
            
            Text("Vacation Trips")
                .font(.system(size: 38))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 34)
                .opacity(0.8)
            
            Text("Enjoy your vacations at Vietnam with prestigious scenic areas.")
                .lineSpacing(8)
                .padding(EdgeInsets(top: 26, leading: 34, bottom: 4, trailing: 90))
                .opacity(0.8)
            Text("Enjoy the best experience with us!")
                .lineSpacing(8)
                .padding(.horizontal, 34)
                .padding(.bottom, 26)
                .opacity(0.8)
            
            Button(action: {
                active = false
            }, label: {
                Capsule()
                  .fill(Color.pink.opacity(0.8))
                    .padding(10)
                    .frame(width: 240,height:76)
                  .overlay(Text("Let's Go!")
                            .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white))
            })
            .padding(.leading, 18)

            
            Spacer()
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
