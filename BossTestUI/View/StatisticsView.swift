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
//        NavigationView{
            ZStack{
                VStack(spacing: 0){
                    
                    ScrollView{
                        
                        VStack(spacing: 0){
                            
                            HStack{
                                Text("고객 통계")
                                    .font(.system(size: 34, weight: .bold))
                                Spacer()
                            }
                            .padding(.leading, 16)
                            .padding(.top, 23)
                            
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
                    .padding(.top, 10)
                    Spacer()
                }
            }
            .background(.yellow.opacity(0.2))
//        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
