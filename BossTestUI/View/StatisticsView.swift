//
//  StatisticsView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct StatisticsView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                
                ScrollView{
                    VStack(spacing: 0){
                        Picker("", selection: $selectedTab) {
                            Text("발급 완료").tag(0)
                            Text("사용 완료").tag(1)
                        }
                        .pickerStyle(.segmented)
                        .padding()
                        
                        if selectedTab == 0 {
                            StatisticsSubmitFinishedTabView()
                        } else {
                            StatisticsUsedFinishedTabView()
                        }
                        
                        Spacer()
                    }
                }
                Spacer()
            }
            .navigationBarTitle("고객 통계", displayMode: .large)
        }
        .background(.yellow.opacity(0.2))
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
