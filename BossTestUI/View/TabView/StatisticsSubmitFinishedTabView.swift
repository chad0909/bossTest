//
//  StatisticsSubmitFinishedTabView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct StatisticsSubmitFinishedTabView: View {
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
            
            ForEach(0..<10) { _ in
                StatisticsComponent()
                    .padding(.horizontal, 16)
            }
        }
    }
}

struct StatisticsSubmitFinishedTabView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsSubmitFinishedTabView()
    }
}
