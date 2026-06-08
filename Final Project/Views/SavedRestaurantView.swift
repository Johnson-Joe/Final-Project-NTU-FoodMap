//
//  SavedRestaurantView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/6/1.
//
import SwiftUI

struct SavedRestaurantView: View {
    let restaurants: [Restaurant]

    @EnvironmentObject private var favoriteStore: FavoriteStore

    private var savedRestaurants: [Restaurant] {
        restaurants.filter { favoriteStore.isFavorite($0) }
    }

    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea()

            if savedRestaurants.isEmpty {
                emptyView
            } else {
                List {
                    ForEach(savedRestaurants) { restaurant in
                        NavigationLink {
                            RestaurantDetailView(restaurant: restaurant)
                        } label: {
                            RestaurantRowView(restaurant: restaurant)
                        }
                        .buttonStyle(.plain)
                        .swipeActions {
                            Button(role: .destructive) {
                                favoriteStore.toggle(restaurant)
                            } label: {
                                Label("移除", systemImage: "trash")
                            }
                        }
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16))
                    }
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
            }
        }
        .navigationTitle("喜愛的餐廳")
    }

    private var emptyView: some View {
        VStack(spacing: 16) {
            Image(systemName: "heart.circle")
                .font(.system(size: 70))
                .foregroundStyle(Color.appTerracotta)

            Text("尚未儲存餐廳")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            Text("進入餐廳介紹頁後，點右上角愛心就可以加入收藏。")
                .font(.subheadline)
                .foregroundStyle(Color.appSecondaryText)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}
#Preview {
    NavigationStack {
        SavedRestaurantView(restaurants: RestaurantData.restaurants)
    }
    .environmentObject(FavoriteStore())
}
