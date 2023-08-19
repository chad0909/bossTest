//
//  StatisticsView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

enum TitleSection: String {
    case published, used
    
    var rawValue: String {
        switch self {
        case .published:
            return "발급완료"
        case .used:
            return "사용완료"
        }
    }
}

struct TitleTextView: View {
    let section: TitleSection
    let namespace: Namespace.ID
    @Binding var selectedSection: TitleSection
    
    var body: some View {
        Text(section.rawValue)
            .font(.system(size: 20, weight: .semibold))
            .foregroundColor(section == selectedSection ? .black : .gray)
            .padding(.horizontal, 20)
            .background(
                ZStack {
                    if section == selectedSection {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 2)
                            .offset(y: 18)
                            .matchedGeometryEffect(id: "DetailSectionCard", in: namespace)
                    }
                }
            )
            .padding()
    }
}

struct StatisticsView: View {
    @State private var selectedTab = 0
    @Namespace var namespace
    @State private var selectedSection = TitleSection.published
    let sectionList: [TitleSection] = [.published, .used]

    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 0){
                    
                    ScrollView{
                        VStack(spacing: 0){
                            HStack(spacing: 30) {
                                ForEach(sectionList, id: \.self) { section in
                                    TitleTextView(section: section, namespace: namespace, selectedSection: $selectedSection)
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
                    Spacer()
                }
                .navigationBarTitle("고객 통계", displayMode: .large)
            }
            .background(.yellow.opacity(0.2))
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
