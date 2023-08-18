//
//  StatisticsComponent.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct StatisticsComponent: View {
    
    @State var userName : String = "chad0909"
    
    
    var couponName: String = "아메리카노 50% 할인권"
    var questName: String = "오후 2시전 아메리카노 2잔 주문"
    var body: some View {
        VStack(alignment: .leading) {
            Text(couponName)
                .font(.system(size: 23, weight: .medium))
            Text(questName)
                .font(.system(size: 14, weight: .medium))
            HStack {
                Spacer()
                Text("chad0909")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color.gray)
            }
            
            
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 30)
        .background(.white)
        .cornerRadius(16)
    }
}

struct StatisticsComponent_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsComponent().padding(.vertical, 20).background(.brown)
    }
}
