////
////  Tab.swift
////  BossTestUI
////
////  Created by 077tech on 2023/08/18.
////
//
//import Foundation
//import SwiftUI
//
//enum TabTitle: String {
//    case quest = "퀘스트"
//    case receipt = "영수증"
//    case statistic = "통계"
//}
//
//enum TabSFIcon: String {
//    case quest = "star.fill"
//    case receipt = "wallet.pass.fill"
//    case statistic = "chart.bar.fill"
//}
//
//enum Tab: CaseIterable {
//    case quest
//    case receipt
//    case statistic
//    
//    var icon: String {
//        switch self {
//        case .quest:
//            return TabSFIcon.quest.rawValue
//        case .receipt:
//            return TabSFIcon.receipt.rawValue
//        case .statistic:
//            return TabSFIcon.statistic.rawValue
//        }
//    }
//    
//    var title: String {
//        switch self {
//        case .quest:
//            return TabTitle.quest.rawValue
//        case .receipt:
//            return TabTitle.receipt.rawValue
//        case .statistic:
//            return TabTitle.statistic.rawValue
//        }
//    }
//    
//    var view: any View {
//        switch self {
//        case .quest:
//            return QuestView()
//        case .receipt:
//            return EmptyView()
//        case .statistic:
//            return EmptyView()
//        }
//    }
//}
