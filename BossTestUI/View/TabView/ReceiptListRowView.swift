//
//  ReceiptListRowView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/19.
//

import SwiftUI

struct ReceiptListRowView: View {
    var couponName: String = "아메리카노 50% 할인권"
    var questName: String = "오후 2시전 아메리카노 2잔 주문"
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(couponName)
                .font(.system(size: 23, weight: .medium))
                .padding(.bottom, 9)
            Text(questName)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color(hue: 0, saturation: 0, brightness: 0.38))
            HStack(spacing: 4) {
                Spacer()
                Text("영수증 확인하기")
                    .font(.system(size: 12, weight: .medium))
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 5, height: 10)
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 13)
        .padding(.top, 17)
        .background(.white)
        .cornerRadius(16)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "info.circle")
                .resizable()
                .frame(width: 16, height: 16)
                .padding(23)
                .foregroundColor(Color(hue: 0, saturation: 0, brightness: 0.38))
        }
    }
}

struct ReceiptListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptListRowView().padding(.vertical, 20).background(.brown)
    }
}