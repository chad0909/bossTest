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
    var image: Image
}


struct ReceiptView: View {
    @State var receiptSelection: Receipt?
    var rec: Receipt = Receipt(userName: "chad", image: Image(systemName: "circle"))
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())],spacing: 16) {
                    
                    NavigationLink(destination: ReceiptCheckView()) {
                        ReceiptListRowView()
                    }
                    .tint(.black)
                    ReceiptListRowView()
                    ReceiptListRowView()
                }
                .padding(.horizontal, 20)
                .shadow(color: .black.opacity(0.16), radius: 10, x: 0, y: 0)
            }
            //ReceiptListView
            //ReceiptListRowView()
            //List(selection: $receiptSelection) {
            //}
            Spacer()
        }
        .background(.yellow.opacity(0.2))
        .navigationTitle("영수증")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct ReceiptView_Previews: PreviewProvider {
    // var rec: Receipt = Receipt(userName: "chad", image: Image(systemName: "circle"))
    static var previews: some View {
        ReceiptView()
    }
}

