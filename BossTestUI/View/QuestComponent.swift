//
//  QuestComponent.swift
//  meokQ-Boss-ios
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct QuestComponent: View {
    
    var prizeName : String = "아메리카노 50% 할인권"
    var missionName : String = "아메리카노 50% 할인권"
    
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 0){
                Text(prizeName)
                    .font(Font.custom("Pretendard", size: 23)
                        .weight(.medium))
                    
                Text(missionName)
                    .font(Font.custom("Pretendard", size: 12)
                        .weight(.medium))
                    .opacity(0.5)
            }
            
            .padding(.vertical, 21)
            .padding(.leading, 25)
            .background(Color.white)
            .frame(width: 360, height: 80)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 0.5)
                    .shadow(radius: 1)
            )
            
            Spacer()
        }
       
        
        
        
        
    }
}

struct QuestComponent_Previews: PreviewProvider {
    static var previews: some View {
        QuestComponent(prizeName: "아메리카노 50% 할인권", missionName: "오후 12시전에 아메리카노 2잔 주문")
    }
}
