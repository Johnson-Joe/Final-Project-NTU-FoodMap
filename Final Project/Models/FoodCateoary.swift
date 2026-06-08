//
//  FoodCateoary.swift
//  Final Project
//
//  Created by 114-2Workshop15 on 2026/5/26.
//
import Foundation

enum FoodCategory: String, CaseIterable, Identifiable {
    case all = "全部"
    case breakfast = "早餐"
    case lunch = "午餐"
    case dinner = "晚餐"
    case dessert = "甜點"
    case streetFood = "小吃"
    case drink = "飲料"
    case vegetarian = "素食"
    case lateNight = "宵夜"

    var id: String { rawValue }

    static var selectableCases: [FoodCategory] {
        allCases.filter { $0 != .all }
    }

    var icon: String {
        switch self {
        case .all:
            return "square.grid.2x2.fill"
        case .breakfast:
            return "sunrise.fill"
        case .lunch:
            return "fork.knife"
        case .dinner:
            return "moon.stars.fill"
        case .dessert:
            return "birthday.cake.fill"
        case .streetFood:
            return "takeoutbag.and.cup.and.straw.fill"
        case .drink:
            return "mug.fill"
        case .vegetarian:
            return "leaf.fill"
        case .lateNight:
            return "sparkles"
        }
    }
}
