import Foundation

enum CampusArea: String, CaseIterable, Identifiable {
    case all = "全部地區"
    case gongguan = "公館商圈"
    case wenzhouXinsheng = "溫州街/新生南"
    case taidaCampus = "台大校內"
    case taipower = "118巷"

    var id: String { rawValue }

    static var selectableCases: [CampusArea] {
        allCases.filter { $0 != .all }
    }

    var icon: String {
        switch self {
        case .all:
            return "map.fill"
        case .gongguan:
            return "tram.fill"
        case .wenzhouXinsheng:
            return "tree.fill"
        case .taidaCampus:
            return "graduationcap.fill"
        case .taipower:
            return "road.lanes"
        }
    }
}
