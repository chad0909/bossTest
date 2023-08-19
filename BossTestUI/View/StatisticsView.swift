//
//  StatisticsView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI



struct StatisticsView: View {
    @State private var selectedTab = 0
    @Namespace var namespace
    @State private var selectedSection = StatisticsTitleSection.published
    let sectionList: [StatisticsTitleSection] = [.published, .used]

    var body: some View {
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
                            
                            HStack(spacing: 30) {
                                ForEach(sectionList, id: \.self) { section in
                                    StatisticsTitleTextView(section: section, namespace: namespace, selectedSection: $selectedSection)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                selectedSection = section
                                            }
                                        }
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(height: 1)
                                    .foregroundColor(.gray)
                                    .offset(y: 18)
                            }
                            
                            if selectedSection == .published {
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
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
