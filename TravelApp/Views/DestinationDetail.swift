//
//  DestinationDetail.swift
//  VN Travel Destinations
//
//  Created by minh on 7/21/22.
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

struct DestinationDetail: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var destination:Destination
    var cnt:Int = 1
    
    var body: some View {

        VStack{
                    
            //Display Images of Destination
            DestinationCard3(destination: destination)
                .frame(width: 414, height: 621, alignment: .center)
            


            //Display detail of Destination
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                        VStack(alignment: .leading, spacing: 12){

                            //Display name of Destination
                            Text(destination.name)
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                            //Display address and province of Destination
                            HStack(alignment: .center, spacing: 4){
                                Image("maps-and-flags")
                                    .resizable()
                                    .frame(width: 15, height: 15, alignment: .center)


                                Text(destination.province)
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .padding(.leading, 4)
                                    .opacity(1)


                            }
                            .padding(.leading, 2)


                            //Display rating of Destination
                            HStack(alignment: .center ,spacing: 4){
                                ForEach(0..<destination.stars) {star in
                                    Image("star")
                                        .resizable()
                                        .frame(width: 16, height: 16, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                                }

                            // Display voting score
                                Text(destination.score)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 15.75))
                                    .opacity(0.9)
                                    .padding(.leading, 4)

                                Spacer()
                            }
                            .padding(.leading, 2)
                            .padding(.top, 2)


                            //Display Description of Destination
                            Text("Description")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.vertical, 8)

                            Text(destination.description)
                                .lineSpacing(10)
                                .opacity(0.8)
                            Spacer()
                            
//                          //Display Location on the Map
                            Text("Location")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.vertical, 8)

                            DestinationMapView(coordinate: destination.locationCoordinate)
                                .frame(width: 364, height: 300)
                                .padding(.leading, 6)
                                .ignoresSafeArea(edges: .top)
                            Spacer()

                            
                        }


                    }



            }
            .padding()
            .padding(.top)
            .background(Color.white)
            .cornerRadius(40)
            .offset(y: -100)
            .frame(width: 414, height: 414, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            

            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButtonView(action: {presentationMode.wrappedValue.dismiss()})
        )

    }
}

struct DestinationDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DestinationDetail(destination: destinations[0])
//            DestinationDetail(destination: destinations[1])
//            DestinationDetail(destination: destinations[2])
//            DestinationDetail(destination: destinations[3])
        }
        
    }
}



struct CustomBackButtonView: View {
    let action: ()-> Void
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "chevron.backward")
                .padding(.all,12)
                .background(Color.white)
                .cornerRadius(8.0)
                .opacity(0.7)
        })
    }
}
