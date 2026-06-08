//
//  ContentView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//


import SwiftUI

struct ContentView: View {
    @AppStorage("hasStarted") private var hasStarted = false

    var body: some View {
        if hasStarted {
            MainTabView()
        } else {
            StartView(hasStarted: $hasStarted)
        }
    }
}

struct MainTabView: View {
    private let restaurants = RestaurantData.restaurants

    @StateObject private var favoriteStore = FavoriteStore()

    var body: some View {
        TabView {
            NavigationStack {
                HomeView(restaurants: restaurants)
            }
            .tabItem {
                Label("主畫面", systemImage: "house.fill")
            }

            NavigationStack {
                FoodMapView(restaurants: restaurants)
            }
            .tabItem {
                Label("地圖", systemImage: "map.fill")
            }

            NavigationStack {
                SavedRestaurantView(restaurants: restaurants)
            }
            .tabItem {
                Label("儲存", systemImage: "heart.fill")
            }

            NavigationStack {
                RandomRestaurantView(restaurants: restaurants)
            }
            .tabItem {
                Label("轉盤", systemImage: "arrow.triangle.2.circlepath")
            }
        }
        .tint(.appTerracotta)
        .environmentObject(favoriteStore)
    }
}

#Preview("第一次進入 App") {
    StartView(hasStarted: .constant(false))
}

#Preview("主 App") {
    MainTabView()
}
