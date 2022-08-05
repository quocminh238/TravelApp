//
//  DestinationList.swift
//  VN Travel Destinations
//
//  Created by minh on 7/20/22.
//

import Foundation
import SwiftUI

struct DestinationList: View {
    var body: some View{
//        NavigationView{

//            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    
                    ForEach(destinations){ destination in
                        
                        NavigationLink(
                            destination: DestinationDetail(destination: destination),
                            label: {
                                DestinationCard2(destination: destination)
                            })
                            .navigationBarHidden(true)
                            .foregroundColor(.black)
                            .padding(.vertical, 0)
                        
                    }
                    
                }
            
//            }
//        }

    }
}


struct DestinationList_Previews: PreviewProvider {
    static var previews: some View {
        DestinationList()
    }
}
