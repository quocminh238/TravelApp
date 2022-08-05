//
//  DestinationRecommended.swift
//  VN Travel Destinations
//
//  Created by minh on 7/24/22.
//

import SwiftUI
import Foundation

struct DestinationRecommended: View {
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(175),spacing: 22),
            GridItem(.fixed(175))
        ], spacing: 18, content: {

            ForEach(destinations){ destination in
                if destination.isRecommended {
                    NavigationLink(
                        destination: DestinationDetail(destination: destination),
                        label: {
                            DestinationCard2(destination: destination)
                        })
                        .navigationBarHidden(true)
                        .foregroundColor(.black)
                        .ignoresSafeArea(edges: .top)
                }

            }
        })
    }
}

struct DestinationRecommended_Previews: PreviewProvider {
    static var previews: some View {
        DestinationRecommended()
    }
}
