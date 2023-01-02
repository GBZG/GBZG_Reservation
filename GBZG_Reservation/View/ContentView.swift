//
//  ContentView.swift
//  GBZG_Reservation
//
//  Created by Noah's Ark on 2023/01/02.
//

import SwiftUI

struct ContentView: View {
    @State private var isReservationButtonPressed: Bool = false
    @State private var isConfirmationButtonPressed: Bool = false
    
    var body: some View {
        NavigationView {
            content
        }
    }
}

private extension ContentView {
    var content: some View {
        VStack {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)
            Text("재미있는 방탈출 테마")

            Button {
                isReservationButtonPressed.toggle()
            } label: {
                Text("예약하기")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(16)
            }
            .padding(.top)
        
            NavigationLink(
                destination: ReservationView(),
                isActive: $isConfirmationButtonPressed
            ) {
                EmptyView()
            }
        }
        .alert("알림", isPresented: $isReservationButtonPressed) {
            Button("취소", role: .cancel) { }
            Button("예약하기", role: .none) { isConfirmationButtonPressed.toggle() }
        } message: {
            Text("테마1을 예약하시겠습니까?")
        }
    }
}
