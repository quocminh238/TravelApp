//
//  DestinationRecommended.swift
//  VN Travel Destinations
//
//  Created by minh on 7/21/22.
//

import SwiftUI

struct DestinationPopular: View {
    var body: some View{
//        NavigationView{

            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .center, spacing: 0){
                    
                    ForEach(destinations){ destination in
                        if destination.isPopular {
                            NavigationLink(
                                destination: DestinationDetail(destination: destination),
                                label: {
                                    DestinationCard1(destination: destination)
                                })
                                .navigationBarHidden(true)
                                .foregroundColor(.black)
                                .padding(.leading, 16)
                                
                        }

                        
                    }
                    
                }
            
            }
//        }.navigationTitle("Recommended").navigationBarTitleDisplayMode(.automatic)

    }
}

struct DestinationPopular_Previews: PreviewProvider {
    static var previews: some View {
        DestinationPopular()
    }
}
