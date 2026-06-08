//
//  FavoriteStore.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/6/1.
//
import SwiftUI
import Foundation
import Combine

final class FavoriteStore: ObservableObject {
    @Published private(set) var favoriteIDs: Set<String> = []

    private let storageKey = "favoriteRestaurantIDs"

    init() {
        loadFavorites()
    }

    func isFavorite(_ restaurant: Restaurant) -> Bool {
        favoriteIDs.contains(restaurant.id)
    }

    func toggle(_ restaurant: Restaurant) {
        var updatedIDs = favoriteIDs

        if updatedIDs.contains(restaurant.id) {
            updatedIDs.remove(restaurant.id)
        } else {
            updatedIDs.insert(restaurant.id)
        }

        favoriteIDs = updatedIDs
        saveFavorites()
    }

    private func loadFavorites() {
        let ids = UserDefaults.standard.stringArray(forKey: storageKey) ?? []
        favoriteIDs = Set(ids)
    }

    private func saveFavorites() {
        UserDefaults.standard.set(Array(favoriteIDs), forKey: storageKey)
    }
}
