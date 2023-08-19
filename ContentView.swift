//
//  ContentView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            TabView {
                QuestView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("퀘스트")
                    }
                ReceiptView()
                
                    .tabItem{
                        Image(systemName: "wallet.pass.fill")
                        Text("영수증")
                    }
                
                StatisticsView()
                
                    .tabItem {
                        Image(systemName: "chart.bar.fill")
                        Text("통계")
                    }
            }
        }
        }
    }
            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
