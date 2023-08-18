//
//  QuestAddView.swift
//  BossTestUI
//
//  Created by 077tech on 2023/08/18.
//

import SwiftUI

struct QuestAddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var questTextValue: String = ""
    @State private var prizeTextValue: String = ""
    @State private var questRemaining: Int = 0
    @State private var alertMessage: Bool = false
    
    var body: some View {
        
        ZStack{
            VStack{
        //퀘스트란
                HStack{
                    Spacer()
                    Text("남은 퀘스트 개수 : \(questRemaining)개")
                        .font(.system(size: 15, weight: .regular))
                }
                .padding(.trailing, 16)
                .padding(.top, 50)
                
                HStack{
                    Text("퀘스트")
                        .font(.system(size: 25, weight: .semibold))
                    Spacer()
                }
                .padding(.leading, 16)
                
                TextField("퀘스트명을 입력하세요", text: $questTextValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                
                
        //보상란
                HStack{
                    Text("보상")
                        .font(.system(size: 25, weight: .semibold))
                    Spacer()
                }
                .padding(.leading, 16)
                
                TextField("퀘스트명을 입력하세요", text: $prizeTextValue)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                
                
                
                Spacer()
                
                HStack{
                    Button {
                        alertMessage = true
                    } label: {
                        Text("제출하기")
                            .padding(.vertical, 14)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color.black)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .alert(isPresented: $alertMessage) {
                                       Alert(title: Text("퀘스트를 추가하시겠습니까?"), message: Text("추가 후 수정이 제한되니 유의 부탁드립니다"),
                                             primaryButton:  .default(Text("확인") ,action: {
                                           
                                       }),
                                             secondaryButton:.cancel(Text("취소")))
                                   }
                    
                    
                }
//                .padding(.bottom, 83)
                
            }
            .navigationBarBackButtonHidden()
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.black)
                    }

                }
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("퀘스트 추가")
                        }
                    }
            }
        }
        .background(.yellow.opacity(0.2))

        
    }
}

struct QuestAddView_Previews: PreviewProvider {
    static var previews: some View {
        QuestAddView()
    }
}
