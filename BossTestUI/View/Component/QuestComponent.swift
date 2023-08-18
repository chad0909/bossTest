//
//  QuestComponent.swift
//  meokQ-Boss-ios
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct QuestComponent: View {
    var couponName: String = "아메리카노 50% 할인권"
    var questName: String = "오후 2시전 아메리카노 2잔 주문"
    var body: some View {
        ZStack
        {
            Color.yellow.ignoresSafeArea()
            HStack{
                VStack(alignment: .leading) {
                    Text(couponName)
                        .font(.system(size: 23, weight: .medium))
                    Text(questName)
                        .font(.system(size: 14, weight: .medium))
                }
                Spacer()
            }
            .padding(.leading, 25)
            .padding(.vertical, 21)
            .background(.white)
            .cornerRadius(16)
        }
       

    }
}

struct QuestComponent_Previews: PreviewProvider {
    static var previews: some View {
        QuestComponent()
    }
}

