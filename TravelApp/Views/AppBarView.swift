//
//  AppBarView.swift
//  VN Travel Destinations
//
//  Created by minh on 7/22/22.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 80) {
            
            Image("menu")
                .resizable()
                .frame(width: 32, height: 30, alignment: .leading)
            
            Text("Discover")
                .font(.system(size: 32))
                .fontWeight(.light)
                .padding()
            
            Image("user")
                .resizable()
                .frame(width: 36, height: 32, alignment: .trailing)
                .offset(x: 0, y: 2)

        }
        .padding(.horizontal)
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarView()
    }
}
