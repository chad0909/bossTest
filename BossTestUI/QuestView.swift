//
//  QuestView.swift
//  meokQ-Boss-ios
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct QuestView: View {
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            VStack{
                
                QuestComponent()
            }
            .padding(.horizontal, 16)
            
        }
        
    }
}

struct QuestView_Previews: PreviewProvider {
    static var previews: some View {
        QuestView()
    }
}
