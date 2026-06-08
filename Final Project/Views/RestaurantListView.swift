//
//  RestaurantListView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//

import SwiftUI

struct RestaurantListView: View {
    let restaurants: [Restaurant]

    @State private var selectedCategory: FoodCategory
    @State private var selectedArea: CampusArea

    init(
        restaurants: [Restaurant],
        initialCategory: FoodCategory = .all,
        initialArea: CampusArea = .all
    ) {
        self.restaurants = restaurants
        _selectedCategory = State(initialValue: initialCategory)
        _selectedArea = State(initialValue: initialArea)
    }

    private var filteredRestaurants: [Restaurant] {
        restaurants.filter { restaurant in
            let categoryMatches =
                selectedCategory == .all ||
                restaurant.categories.contains(selectedCategory)

            let areaMatches =
                selectedArea == .all ||
                restaurant.area == selectedArea

            return categoryMatches && areaMatches
        }
    }

    var body: some View {
        VStack(spacing: 0) {
            filterSection

            if filteredRestaurants.isEmpty {
                emptyView
            } else {
                List {
                    ForEach(filteredRestaurants) { restaurant in
                        NavigationLink {
                            RestaurantDetailView(restaurant: restaurant)
                        } label: {
                            RestaurantRowView(restaurant: restaurant)
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
        .background(Color.appBackground.ignoresSafeArea())
        .navigationTitle("餐廳列表")
    }

    private var filterSection: some View {
        VStack(spacing: 12) {
            Picker("食物種類", selection: $selectedCategory) {
                ForEach(FoodCategory.allCases) { category in
                    Text(category.rawValue).tag(category)
                }
            }
            .pickerStyle(.menu)

            Picker("地區", selection: $selectedArea) {
                ForEach(CampusArea.allCases) { area in
                    Text(area.rawValue).tag(area)
                }
            }
            .pickerStyle(.menu)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.appBackground)
    }

    private var emptyView: some View {
        VStack(spacing: 12) {
            Image(systemName: "fork.knife.circle")
                .font(.system(size: 60))
                .foregroundStyle(Color.appSage)

            Text("目前沒有符合條件的餐廳")
                .font(.headline)
                .foregroundStyle(Color.appPrimaryText)

            Text("可以換一個食物種類或地區試試看")
                .font(.subheadline)
                .foregroundStyle(Color.appSecondaryText)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}
#Preview("全部餐廳") {
    NavigationStack {
        RestaurantListView(restaurants: RestaurantData.restaurants)
    }
    .environmentObject(FavoriteStore())
}

#Preview("早餐分類") {
    NavigationStack {
        RestaurantListView(
            restaurants: RestaurantData.restaurants,
            initialCategory: .breakfast,
            initialArea: .all
        )
    }
    .environmentObject(FavoriteStore())
}

#Preview("公館地區") {
    NavigationStack {
        RestaurantListView(
            restaurants: RestaurantData.restaurants,
            initialCategory: .all,
            initialArea: .gongguan
        )
    }
    .environmentObject(FavoriteStore())
}
