//
//  RestaurantDetailView.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant

    @EnvironmentObject private var favoriteStore: FavoriteStore

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                headerCard
                basicInfoSection
                studentCommentSection
                googleMapButton
            }
            .padding()
            .padding(.bottom, 24)
        }
        .background(Color.appBackground.ignoresSafeArea())
        .navigationTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                favoriteStore.toggle(restaurant)
            } label: {
                Image(systemName: favoriteStore.isFavorite(restaurant) ? "heart.fill" : "heart")
                    .foregroundStyle(Color.appTerracotta)
            }
        }
    }

    private var headerCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                ZStack {
                    Circle()
                        .fill(Color.appSage.opacity(0.14))
                        .frame(width: 76, height: 76)

                    Image(systemName: restaurant.categories.first?.icon ?? "fork.knife")
                        .font(.largeTitle)
                        .foregroundStyle(Color.appSage)
                }

                VStack(alignment: .leading, spacing: 6) {
                    Text(restaurant.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.appPrimaryText)

                    Text(restaurant.categoryText)
                        .font(.subheadline)
                        .foregroundStyle(Color.appSecondaryText)
                }

                Spacer()
            }

            Text(restaurant.description)
                .font(.body)
                .foregroundStyle(Color.appPrimaryText)
        }
        .padding()
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.06), radius: 10, x: 0, y: 5)
    }

    private var basicInfoSection: some View {
        InfoBlock(title: "基本資訊") {
            Text("地區：\(restaurant.area.rawValue)")
            Text("價格：\(restaurant.priceRange)")
            Text("地址：\(restaurant.address)")
            Text("營業時間：\(restaurant.openingHours)")
        }
    }

    private var studentCommentSection: some View {
        InfoBlock(title: "學生評論") {
            ForEach(restaurant.studentComments, id: \.self) { comment in
                Text("・\(comment)")
            }
        }
    }

    private var googleMapButton: some View {
        Link(destination: restaurant.googleMapsURL) {
            Label("查看 Google Maps 評價", systemImage: "map.fill")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
        }
        .buttonStyle(.borderedProminent)
        .tint(.appSage)
    }
}

struct InfoBlock<Content: View>: View {
    let title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.appPrimaryText)

            content
                .font(.body)
                .foregroundStyle(Color.appPrimaryText)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.appCard)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .overlay {
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color.appDivider, lineWidth: 1)
        }
        .shadow(color: .black.opacity(0.035), radius: 8, x: 0, y: 4)
    }
}
#Preview {
    NavigationStack {
        RestaurantDetailView(restaurant: RestaurantData.restaurants[0])
    }
    .environmentObject(FavoriteStore())
}
