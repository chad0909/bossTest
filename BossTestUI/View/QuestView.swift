//
//  QuestView.swift
//  meokQ-Boss-ios
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct QuestView: View {
    @State private var selectedTab = 0
    @Namespace var namespace
    @State private var selectedSection = QuestTitleSection.posting
    let sectionList: [QuestTitleSection] = [.posting, .reviewing]

    var body: some View {
            ZStack{
                VStack(spacing: 0){
                    ScrollView{
                        VStack(spacing: 0){
                            HStack{
                                Text("퀘스트")
                                    .font(.system(size: 34, weight: .bold))
                                Spacer()
                            }
                            .padding(.leading, 16)
                            .padding(.top, 23)
                            
                            HStack(spacing: 30) {
                                ForEach(sectionList, id: \.self) { section in
                                    QuestTitleTextView(section: section, namespace: namespace, selectedSection: $selectedSection)
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
                            
                            if selectedSection == .posting {
                                QuestPostTabView()
                            } else {
                                QuestCheckTabView()
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

struct QuestView_Previews: PreviewProvider {
    static var previews: some View {
        QuestView()
    }
}


