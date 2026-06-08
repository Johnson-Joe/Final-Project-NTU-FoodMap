//
//  RestaurantRowView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//

import SwiftUI

struct RestaurantRowView: View {
    let restaurant: Restaurant

    @EnvironmentObject private var favoriteStore: FavoriteStore

    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.appSage.opacity(0.14))
                    .frame(width: 64, height: 64)

                Image(systemName: restaurant.categories.first?.icon ?? "fork.knife")
                    .font(.title)
                    .foregroundStyle(Color.appSage)
            }

            VStack(alignment: .leading, spacing: 6) {
                Text(restaurant.name)
                    .font(.headline)
                    .foregroundStyle(Color.appPrimaryText)

                Text("\(restaurant.area.rawValue)｜\(restaurant.priceRange)")
                    .font(.subheadline)
                    .foregroundStyle(Color.appSecondaryText)

                Text(restaurant.categoryText)
                    .font(.caption)
                    .foregroundStyle(Color.appSecondaryText)
            }

            Spacer()

            Image(systemName: favoriteStore.isFavorite(restaurant) ? "heart.fill" : "heart")
                .foregroundStyle(favoriteStore.isFavorite(restaurant) ? Color.appTerracotta : Color.appSecondaryText)
        }
        .padding(14)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.04), radius: 8, x: 0, y: 4)
    }
}
#Preview {
    RestaurantRowView(restaurant: RestaurantData.restaurants[0])
        .environmentObject(FavoriteStore())
        .padding()
}
