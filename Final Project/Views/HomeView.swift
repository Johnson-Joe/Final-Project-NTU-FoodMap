//
//  HomeView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/6/1.
//
import SwiftUI

struct HomeView: View {
    let restaurants: [Restaurant]

    @AppStorage("userName") private var userName = ""
    @AppStorage("userDepartment") private var userDepartment = ""
    @AppStorage("userFavoriteFood") private var userFavoriteFood = ""
    @AppStorage("hasStarted") private var hasStarted = false

    @State private var searchText = ""
    @State private var showResetAlert = false

    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    private var greetingText: String {
        let trimmedName = userName.trimmingCharacters(in: .whitespacesAndNewlines)

        if trimmedName.isEmpty {
            return "今天想吃什麼？"
        } else {
            return "\(trimmedName)，今天想吃什麼？"
        }
    }

    private var searchResults: [Restaurant] {
        let keyword = searchText.trimmingCharacters(in: .whitespacesAndNewlines)

        if keyword.isEmpty {
            return []
        }

        return restaurants.filter { restaurant in
            restaurant.name.localizedCaseInsensitiveContains(keyword) ||
            restaurant.area.rawValue.localizedCaseInsensitiveContains(keyword) ||
            restaurant.categoryText.localizedCaseInsensitiveContains(keyword)
        }
    }

    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    heroSection
                    searchSection
                    aiAssistantSection

                    if !searchText.isEmpty {
                        searchResultSection
                    } else {
                        foodCategorySection
                        areaSection
                    }
                }
                .padding(.horizontal)
                .padding(.top, 18)
                .padding(.bottom, 96)
            }
        }
        .navigationTitle("NTU Food Map")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                showResetAlert = true
            } label: {
                Image(systemName: "person.crop.circle")
            }
        }
        .alert("重新設定個人資料？", isPresented: $showResetAlert) {
            Button("取消", role: .cancel) { }

            Button("重新設定", role: .destructive) {
                hasStarted = false
            }
        } message: {
            Text("會回到一開始的個人資料頁，但不會清除你的收藏餐廳。")
        }
    }

    private var heroSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(greetingText)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            if !userDepartment.isEmpty || !userFavoriteFood.isEmpty {
                VStack(alignment: .leading, spacing: 6) {
                    if !userDepartment.isEmpty {
                        Label(userDepartment, systemImage: "graduationcap.fill")
                            .foregroundStyle(Color.appSecondaryText)
                    }

                    if !userFavoriteFood.isEmpty {
                        Label("偏好：\(userFavoriteFood)", systemImage: "heart.fill")
                            .foregroundStyle(Color.appTerracotta)
                    }
                }
                .font(.subheadline)
            } else {
                Text("尋找你今天的一餐")
                    .font(.subheadline)
                    .foregroundStyle(Color.appSecondaryText)
            }

            HStack(spacing: 12) {
                Image(systemName: "fork.knife.circle.fill")
                    .font(.title)
                    .foregroundStyle(Color.appSage)

                Text("台大周邊美食探索")
                    .font(.headline)
                    .foregroundStyle(Color.appPrimaryText)

                Spacer()

                Image(systemName: "leaf.fill")
                    .font(.title2)
                    .foregroundStyle(Color.appSage.opacity(0.75))
            }
            .padding(18)
            .background(Color.appCard)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .overlay {
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.appDivider, lineWidth: 1)
            }
            .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)
        }
    }

    private var searchSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("搜尋餐廳")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            HStack(spacing: 12) {
                TextField("搜尋餐廳、地區或食物種類", text: $searchText)
                    .font(.headline)
                    .textFieldStyle(.plain)
                    .autocorrectionDisabled()

                Image(systemName: "magnifyingglass")
                    .font(.title3)
                    .foregroundStyle(Color.appSecondaryText)
            }
            .padding(.horizontal, 18)
            .frame(height: 62)
            .background(Color.appCard)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .overlay {
                RoundedRectangle(cornerRadius: 22)
                    .stroke(Color.appDivider, lineWidth: 1)
            }
        }
    }

    private var aiAssistantSection: some View {
        NavigationLink {
            AIAssistantView(restaurants: restaurants)
        } label: {
            HStack(spacing: 16) {
                ZStack {
                    Circle()
                        .fill(Color.appSage.opacity(0.16))
                        .frame(width: 54, height: 54)

                    Image(systemName: "sparkles")
                        .font(.title2)
                        .foregroundStyle(Color.appSage)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text("AI 美食問答")
                        .font(.headline)
                        .foregroundStyle(Color.appPrimaryText)

                    Text("問問 AI 今天適合吃什麼")
                        .font(.subheadline)
                        .foregroundStyle(Color.appSecondaryText)
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundStyle(Color.appSecondaryText)
            }
            .padding()
            .background(Color.appCard)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .overlay {
                RoundedRectangle(cornerRadius: 22)
                    .stroke(Color.appDivider, lineWidth: 1)
            }
            .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 4)
        }
        .buttonStyle(.plain)
    }

    private var searchResultSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("搜尋結果")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            if searchResults.isEmpty {
                Text("找不到符合「\(searchText)」的餐廳")
                    .foregroundStyle(Color.appSecondaryText)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.appCard)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.appDivider, lineWidth: 1)
                    }
            } else {
                VStack(spacing: 12) {
                    ForEach(searchResults) { restaurant in
                        NavigationLink {
                            RestaurantDetailView(restaurant: restaurant)
                        } label: {
                            RestaurantRowView(restaurant: restaurant)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
    }

    private var foodCategorySection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("依照食物種類")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            LazyVGrid(columns: columns, spacing: 14) {
                ForEach(FoodCategory.selectableCases) { category in
                    NavigationLink {
                        RestaurantListView(
                            restaurants: restaurants,
                            initialCategory: category,
                            initialArea: .all
                        )
                    } label: {
                        HomeChoiceCard(
                            title: category.rawValue,
                            systemImage: category.icon
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }

    private var areaSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("依照地區")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.appPrimaryText)

            LazyVGrid(columns: columns, spacing: 14) {
                ForEach(CampusArea.selectableCases) { area in
                    NavigationLink {
                        RestaurantListView(
                            restaurants: restaurants,
                            initialCategory: .all,
                            initialArea: area
                        )
                    } label: {
                        HomeChoiceCard(
                            title: area.rawValue,
                            systemImage: area.icon
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct HomeChoiceCard: View {
    let title: String
    let systemImage: String

    var body: some View {
        VStack(spacing: 14) {
            ZStack {
                Circle()
                    .fill(Color.appBackground)
                    .frame(width: 60, height: 60)
                    .shadow(color: .black.opacity(0.05), radius: 6, x: 0, y: 3)

                Image(systemName: systemImage)
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundStyle(Color.appPrimaryText.opacity(0.85))
            }

            Text(title)
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .foregroundStyle(Color.appPrimaryText)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 130)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 26))
        .overlay {
            RoundedRectangle(cornerRadius: 26)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.07), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    NavigationStack {
        HomeView(restaurants: RestaurantData.restaurants)
    }
    .environmentObject(FavoriteStore())
}
