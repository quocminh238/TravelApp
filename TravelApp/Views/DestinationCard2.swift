//
//  DestinationCard2.swift
//  VN Travel Destinations
//
//  Created by minh on 7/22/22.
//

import SwiftUI

struct DestinationCard2: View {
    var destination: Destination
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
            //Image for Card
            destination.imageLogo
                .resizable()
                .frame(width: 180, height: 180)
                .cornerRadius(20)
                .opacity(1)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("black")
                    .resizable()
                    .cornerRadius(20)
                    .opacity(0.25)
 
            }
            .frame(width: 180, height: 65)

            

            VStack(alignment: .leading, spacing: 6){
                    Text(destination.name)
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(.white)
                
                    HStack(alignment: .center ,spacing: 5){
                        ForEach(0..<destination.stars) {star in
                            Image("star")
                                .resizable()
                                .frame(width: 12, height: 12, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .opacity(0.9)

                        }
                        Text(destination.score)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .opacity(0.9)
                            .padding(.leading, 2)
                            .offset(y:0.5)

                    }

                
//                    HStack(alignment: .center, spacing: 0){
//                        Image("maps-and-flags")
//                            .resizable()
//                            .frame(width: 13, height: 13, alignment: .center)
//
//
//                        Text(destination.province)
//                            .font(.system(size: 13))
//                            .padding(.leading, 4)
//                            .opacity(0.7)
//                            .foregroundColor(.white)
//                    }

                }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 15, trailing: 10))

        }
        
    }
}

struct DestinationCard2_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DestinationCard2(destination: destinations[0])
            DestinationCard2(destination: destinations[1])
            DestinationCard2(destination: destinations[2])
            DestinationCard2(destination: destinations[3])
        }
            .previewLayout(.fixed(width: 180, height: 180))
    }
}
