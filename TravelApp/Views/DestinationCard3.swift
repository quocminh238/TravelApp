//
//  DestinationCard3.swift
//  VN Travel Destinations
//
//  Created by minh on 7/26/22.
//

import SwiftUI
import CoreLocation

struct DestinationCard3: View {

    var destination:Destination
    
    var body: some View {
        destination.imageLogo
            .resizable()
            .frame(width: 414, height: 621, alignment: .center)
            .ignoresSafeArea(edges: .top)
//        DestinationMapView(coordinate: destination.locationCoordinate)
//            .frame(width: 414, height: 621)
//            .ignoresSafeArea(edges: .top)
        

//        ScrollView(.horizontal, showsIndicators: false){
//            TabView{
//                destination.imageLogo
//                    .resizable()
//                    .frame(width: 414, height: 621, alignment: .center)
//                    .ignoresSafeArea(edges: .top)
//
//
//                destination.imageBackground1
//                    .resizable()
//                    .frame(width: 414, height: 621, alignment: .center)
//                    .ignoresSafeArea(edges: .top)
//                
//                
////                DestinationMapView(coordinate: destination.locationCoordinate)
////                    .frame(width: 414, height: 621)
////                    .ignoresSafeArea(edges: .top)
//
//
//
//                }
////            .ignoresSafeArea()
////            .tabViewStyle(PageTabViewStyle())
////            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//
//        }
//        .tabViewStyle(PageTabViewStyle())
//        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)



    }
}

struct DestinationCard3_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DestinationCard3(destination: destinations[0])
//            DestinationCard3(destination: destinations[1])
//            DestinationCard3(destination: destinations[2])
//            DestinationCard3(destination: destinations[3])
        }
            .previewLayout(.fixed(width: 414, height: 621))
    }
    
}


