//
//  DestinationRow.swift
//  VN Travel Destinations
//
//  Created by minh on 7/20/22.
//

import SwiftUI

struct DestinationCard1: View {
    var destination: Destination
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
            //Image for Card
            destination.imageLogo
                .resizable()
                .frame(width: 320, height: 250)
                .cornerRadius(20)

            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("black")
                    .resizable()
                    .cornerRadius(20)
                    .opacity(0.25)
 
            }
            .frame(width: 320, height: 80)



            VStack(alignment: .leading, spacing: 10){
                Text(destination.name)
                    .font(.system(size: 24))
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
                        .offset(y: 0.5)

                    Spacer()
                }
//                HStack(alignment: .center ,spacing: 4){
//                    ForEach(0..<destination.stars) {star in
//                        Image("star")
//                            .resizable()
//                            .frame(width: 16, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .opacity(0.9)
//                    }
//                }

                    
//                HStack(alignment: .center, spacing: 0){
//                    Image("maps-and-flags")
//                        .resizable()
//                        .frame(width: 16, height: 16, alignment: .center)
//
//
//                    Text(destination.province)
//                        .font(.system(size: 18))
//                        .padding(.leading, 4)
//                        .opacity(0.7)
//                        .foregroundColor(.white)
//
//                }

            }
        .padding(EdgeInsets(top: 10, leading: 25, bottom: 16, trailing: 10))
        }
        
        
    }
}

struct DestinationCard1_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DestinationCard1(destination: destinations[0])
            DestinationCard1(destination: destinations[1])
            DestinationCard1(destination: destinations[2])
            DestinationCard1(destination: destinations[3])
        }
            .previewLayout(.fixed(width: 320, height: 250))
    }
}

