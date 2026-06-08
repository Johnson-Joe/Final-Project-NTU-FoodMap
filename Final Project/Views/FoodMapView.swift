//
//  FoodmapView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//
import SwiftUI
import MapKit

struct FoodMapView: View {
    let restaurants: [Restaurant]

    @State private var selectedRestaurant: Restaurant?

    @State private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 25.0173, longitude: 121.5337),
            span: MKCoordinateSpan(latitudeDelta: 0.018, longitudeDelta: 0.018)
        )
    )

    var body: some View {
        Map(position: $position) {
            ForEach(restaurants) { restaurant in
                Annotation(restaurant.name, coordinate: restaurant.coordinate) {
                    Button {
                        selectedRestaurant = restaurant
                    } label: {
                        ZStack {
                            Circle()
                                .fill(Color.appCard)
                                .frame(width: 44, height: 44)
                                .shadow(color: .black.opacity(0.08), radius: 6, x: 0, y: 3)

                            Image(systemName: "fork.knife.circle.fill")
                                .font(.title)
                                .foregroundStyle(Color.appSage)
                        }
                    }
                }
            }
        }
        .navigationTitle("美食地圖")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $selectedRestaurant) { restaurant in
            NavigationStack {
                RestaurantDetailView(restaurant: restaurant)
            }
        }
    }
}

#Preview {
    NavigationStack {
        FoodMapView(restaurants: RestaurantData.restaurants)
    }
    .environmentObject(FavoriteStore())
}
