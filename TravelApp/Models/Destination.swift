//
//  Destination.swift
//  VN Travel Destinations
//
//  Created by minh on 7/20/22.
//

import Foundation
import SwiftUI
import CoreLocation


struct Destination: Codable, Identifiable {
    var id:Int
    var name: String
    var province: String
    var description: String
    var stars: Int
    var score: String
    var isPopular: Bool
    var isRecommended: Bool
    
    private var imageAvatar: String
    var imageLogo: Image {
        Image(imageAvatar)
    }
    
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
