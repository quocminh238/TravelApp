//
//  WelcomeView.swift
//  VN Travel Destinations
//
//  Created by minh on 8/4/22.
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

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    var body: some View {
        ZStack {
            if isWelcomeActive {
                GreetingView(active: $isWelcomeActive)
            } else {
                MainScreenView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
