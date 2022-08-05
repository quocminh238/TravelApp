//
//  DestinationTabView.swift
//  VN Travel Destinations
//
//  Created by minh on 7/25/22.
//

import SwiftUI

struct DestinationTabView: View {
    var destination:Destination
    var body: some View {
        TabView {
            ForEach(destinations) {destination in
                DestinationCard3(destination: destination)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }

}

struct DestinationTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DestinationTabView(destination: destinations[0])
            DestinationTabView(destination: destinations[1])
            DestinationTabView(destination: destinations[2])
            DestinationTabView(destination: destinations[3])
        }
            .previewLayout(.fixed(width: 320, height: 250))
    }
}
