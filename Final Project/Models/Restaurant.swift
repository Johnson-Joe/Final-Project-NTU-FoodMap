//
//  Restaurant.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//
import Foundation
import CoreLocation

struct Restaurant: Identifiable {
    let id: String
    let name: String
    let area: CampusArea
    let categories: [FoodCategory]
    let priceRange: String
    let address: String
    let openingHours: String
    let description: String
    let studentComments: [String]
    let coordinate: CLLocationCoordinate2D
    let googleMapsURL: URL

    var categoryText: String {
        categories.map(\.rawValue).joined(separator: "、")
    }
}
