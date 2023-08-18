//
//  RecieptView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/19.
//

import SwiftUI

struct Receipt: Identifiable {
    var id = UUID()
    var userName: String
    var image: Image // TODO: String? 변경
    var quest: Quest
}

struct Quest {
    var quest: String
    var coupon: String
}

var questList: [Quest] = [
    Quest(quest: "오후 2시전 아메리카노 2잔 주문", coupon: "아메리카노 50% 할인권"),
    Quest(quest: "아메리카노 00잔 주문", coupon: "아메리카노 1% 할인권")
]
var receiptList: [Receipt] = [
    Receipt(userName: "chad", image: Image(systemName: "circle"), quest: questList[0]),
    Receipt(userName: "jjjjjjad", image: Image(systemName: "circle"), quest: questList[0]),
    Receipt(userName: "zzzzzzzzzzad", image: Image(systemName: "circle"),quest: questList[1])

]

struct ReceiptView: View {
    @State var receiptSelection: Receipt?


    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())],spacing: 16) {
                    ForEach(receiptList) { receipt in
                        NavigationLink(destination: ReceiptCheckView(receipt: receipt )) {
                            ReceiptListRowView(receipt: receipt)
                        }
                    }
                    .tint(.black)
                }.shadow(color: .black.opacity(0.16), radius: 10, x: 0, y: 0)
                .padding(.horizontal, 20)
                .padding(.top, 30)
            }
            Spacer()
        }
        
        .background(.yellow.opacity(0.2))
        .navigationTitle("영수증")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct ReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptView()
    }
}

