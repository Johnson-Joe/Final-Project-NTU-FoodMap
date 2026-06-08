//
//  RandomRestaurantView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//

import SwiftUI

struct RandomRestaurantView: View {
    let restaurants: [Restaurant]

    @State private var selectedCategory: FoodCategory = .all
    @State private var selectedArea: CampusArea = .all
    @State private var selectedRestaurant: Restaurant?
    @State private var wheelDegrees: Double = 0
    @State private var showNoResultAlert = false

    private var candidates: [Restaurant] {
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
        ZStack {
            Color.appBackground.ignoresSafeArea()

            ScrollView {
                VStack(spacing: 24) {
                    titleSection
                    filterSection
                    FoodWheelView(degrees: wheelDegrees)

                    Button {
                        spinAndPick()
                    } label: {
                        Label("開始抽餐廳", systemImage: "sparkles")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.appSage)

                    resultSection
                }
                .padding()
                .padding(.bottom, 80)
            }
        }
        .navigationTitle("隨機轉盤")
        .navigationBarTitleDisplayMode(.inline)
        .alert("沒有符合條件的餐廳", isPresented: $showNoResultAlert) {
            Button("OK") { }
        } message: {
            Text("請換一個食物種類或地區再試一次。")
        }
    }

    private var titleSection: some View {
        VStack(spacing: 8) {
            Text("沒有想法嗎？")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            Text("選擇食物類型與地區，讓轉盤幫你決定")
                .font(.subheadline)
                .foregroundStyle(Color.appSecondaryText)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)
    }

    private var filterSection: some View {
        VStack(spacing: 16) {
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

            Text("目前候選餐廳：\(candidates.count) 家")
                .font(.caption)
                .foregroundStyle(Color.appSecondaryText)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.035), radius: 8, x: 0, y: 4)
    }

    @ViewBuilder
    private var resultSection: some View {
        if let selectedRestaurant {
            VStack(alignment: .leading, spacing: 12) {
                Text("今天吃這家！")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.appPrimaryText)

                RestaurantRowView(restaurant: selectedRestaurant)

                NavigationLink {
                    RestaurantDetailView(restaurant: selectedRestaurant)
                } label: {
                    Text("查看餐廳介紹")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.bordered)
                    .tint(.appSage)
            }
            .padding()
            .background(Color.appSoftCard)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .overlay {
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.appDivider, lineWidth: 1)
            }
        }
    }

    private func spinAndPick() {
        guard let result = candidates.randomElement() else {
            selectedRestaurant = nil
            showNoResultAlert = true
            return
        }

        withAnimation(.easeOut(duration: 1.2)) {
            wheelDegrees += Double.random(in: 720...1440)
        }

        selectedRestaurant = result
    }
}

struct FoodWheelView: View {
    let degrees: Double

    var body: some View {
        ZStack {
            Circle()
                .fill(Color.appSage.opacity(0.25))
                .frame(width: 180, height: 180)
                .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)

            Circle()
                .stroke(Color.appCard, lineWidth: 12)
                .frame(width: 150, height: 150)

            VStack(spacing: 8) {
                Text("🍪")
                    .font(.system(size: 56))


            }
        }
        .rotationEffect(.degrees(degrees))
    }
}
#Preview {
    NavigationStack {
        RandomRestaurantView(restaurants: RestaurantData.restaurants)
    }
    .environmentObject(FavoriteStore())
}
