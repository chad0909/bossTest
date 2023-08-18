
import SwiftUI

struct ReceiptCheckView: View {
    let userName: String = "Caadddd"
    @State private var showSubmitAlert = false
    @State private var showBanryeoSheet = false
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Spacer()
                Text("유저: \(userName)")
                    .font(.system(size: 15, weight: .regular))
            }
            .padding(.top, 20)
            ScrollView {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(minHeight: 550, maxHeight: 700)
                    .background(.gray.opacity(0.5))
                
            }
            .padding(.horizontal, 16)
            
            HStack{
                Button {
                    //                    showCancelAlert = true
                    showBanryeoSheet = true
                } label: {
                    Text("반려하기")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white)
                }
                .frame(width: 146, height: 50)
                .background(.gray)
                .cornerRadius(12)
                
                Spacer()
                
                Button {
                    showSubmitAlert = true
                } label: {
                    Text("발급하기")
                        .font(.system(size: 20, weight: .medium))
                    
                        .foregroundColor(.white)
                    
                }
                .frame(width: 180, height: 50)
                .background(.pink)
                .cornerRadius(12)
                .alert(isPresented: $showSubmitAlert) {
                    Alert(title: Text("쿠폰을 발급하시겠습니까?"), message: Text("발급 후 되돌릴 수 없으니 유의 부탁드립니다"),
                          primaryButton: .default(Text("발급")),
                          secondaryButton: .cancel(Text("취소")))
                }
            }
            
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 60)
        .edgesIgnoringSafeArea([.bottom, .horizontal])
        .navigationTitle("영수증 확인")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 17)
                    Text("뒤로")
                }
            }
        }
        .sheet(isPresented: $showBanryeoSheet) {
            SheetView(showBanryeoSheet: $showBanryeoSheet)
        }
    }
    func goHome() {
        //Home으로 이동
    }
}

struct ReceiptCheckView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptCheckView()
    }
}


struct SheetView: View {
    @Binding var showBanryeoSheet: Bool
    @State private var showCancelAlert = false
    
    let initialText: String = "반려하신 사유를 작성해주세요"
    @State var text: String = ""
    var reasonList: [String] = ["영수증이 불명확합니다", "영수증과 퀘스트가 일치하지 않습니다"]
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("영수증 반려하기")
            HStack {
                Text("반려 사유 입력하기")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
            }
            Menu {
                ForEach(reasonList, id: \.self) { reason in
                    Button(reason) {
                        text = reason
                    }
                }
            } label: {
                HStack {
                    Text("직접 입력")
                        .font(.system(size: 14, weight: .medium))
                    Spacer()
                    Image(systemName: "chevron.down")
                }.padding(.horizontal, 12)
                
                
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color(hue: 0, saturation: 0, brightness: 0.96))
            .cornerRadius(12)
            .foregroundColor(.black)
            
            
            TextField(initialText, text: $text, axis: .vertical)
                .font(.system(size: 14, weight: .medium))
                .frame(minHeight: 80)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color(hue: 0, saturation: 0, brightness: 0.96))
                .cornerRadius(12)
            
            
            Spacer()
            
            Button {
                
                showCancelAlert = true
            } label: {
                Text("반려하기")
                    .font(.system(size: 18, weight: .medium))
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(12)
            .alert(isPresented: $showCancelAlert) {
                Alert(title: Text("영수증을 반려하시겠습니까?"), message: Text("반려 후 되돌릴 수 없으니 유의 부탁드립니다"),
                      primaryButton:  .default(Text("반려"),
                                               action: {
                    showBanryeoSheet = false
                    //리스트에서 해당 영수증 삭제, 이전 영수증 뷰로 이동
                }),
                      secondaryButton:.cancel(Text("취소")))
            }
        }
        .padding(.horizontal, 16)
    }
    
}
struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(showBanryeoSheet: .constant(true))
    }
}
