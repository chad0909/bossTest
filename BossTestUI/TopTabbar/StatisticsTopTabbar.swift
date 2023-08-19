//
//  StatisticsTopTabbar.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/19.
//

import Foundation
import SwiftUI

enum StatisticsTitleSection: String {
    case published, used
    
    var rawValue: String {
        switch self {
        case .published:
            return "발급완료"
        case .used:
            return "사용완료"
        }
    }
}

struct StatisticsTitleTextView: View {
    let section: StatisticsTitleSection
    let namespace: Namespace.ID
    @Binding var selectedSection: StatisticsTitleSection
    
    var body: some View {
        Text(section.rawValue)
            .font(.system(size: 20, weight: .semibold))
            .foregroundColor(section == selectedSection ? .black : .gray)
            .padding(.horizontal, 20)
            .background(
                ZStack {
                    if section == selectedSection {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 2)
                            .offset(y: 18)
                            .matchedGeometryEffect(id: "DetailSectionCard", in: namespace)
                    }
                }
            )
            .padding()
    }
}
