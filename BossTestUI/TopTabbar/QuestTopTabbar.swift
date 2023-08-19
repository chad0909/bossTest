//
//  QuestTopTabber.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/19.
//

import Foundation
import SwiftUI

enum QuestTitleSection: String {
    case posting, reviewing
    
    var rawValue: String {
        switch self {
        case .posting:
            return "게시중"
        case .reviewing:
            return "검토중"
        }
    }
}

struct QuestTitleTextView: View {
    let section: QuestTitleSection
    let namespace: Namespace.ID
    @Binding var selectedSection: QuestTitleSection
    
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
