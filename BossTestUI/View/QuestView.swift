//
//  QuestView.swift
//  meokQ-Boss-ios
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct QuestView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            VStack(spacing:0){
                ScrollView{
                    VStack(spacing: 0){
                        
                            Picker("", selection: $selectedTab) {
                                Text("게시중").tag(0)
                                Text("검토중").tag(1)
                            }
                            
                            .pickerStyle(.segmented)
                            .padding()
                        
                        if selectedTab == 0 {
                            QuestCheckTabView()
                        } else {
                            QuestPostTabView()
                        }
                        
                        Spacer()
                    }
                }

                    HStack{
                        NavigationLink(destination: QuestAddView()) {
                               Text("퀘스트 추가 +")
                                   .padding(.vertical, 14)
                                   .foregroundColor(Color.black)
                                   .font(.system(size: 20, weight: .semibold))
                           }
                           .frame(maxWidth: .infinity)
                           .background(Color.blue)
                    }
                    
                
                Spacer()
                
                
            }
            
        }
    }
}

struct QuestView_Previews: PreviewProvider {
    static var previews: some View {
        QuestView()
    }
}

