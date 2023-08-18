//
//  StatisticsSubmitFinishedTabView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct StatisticsSubmitFinishedTabView: View {
    
    var submitFinishedCouponArray = ["오후 2시전 아메리카노 2잔 주문", "오후 2시전 아메리카노 2잔 주문"]
    var submitFinishedQuestArray = ["아메리카노 50% 할인권", "아메리카노 50% 할인권"]
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
            
            ForEach(0..<submitFinishedQuestArray.count) { i in
                StatisticsComponent(couponName: submitFinishedCouponArray[i], questName: submitFinishedQuestArray[i])
                    .padding(.horizontal, 16)
            }
        }
        .navigationBarTitle("고객 통계", displayMode: .large)
    }
}

struct StatisticsSubmitFinishedTabView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsSubmitFinishedTabView()
    }
}
