//
//  ReservationView.swift
//  GBZG_Reservation
//
//  Created by Noah's Ark on 2023/01/02.
//

import SwiftUI

struct ReservationView: View {
    var body: some View {
        content
    }
}

private extension ReservationView {
    private var content: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("예약이 완료되었습니다.")
                    .font(.title2)
                
                Text("매장에 방문하시면 아래 내역을 보여주세요.")
                    .padding(.bottom)
                
                Text("내역을 확인해주세요.")
                Text("일시: 2023. 01. 31")
                Text("인원수: 2")
                Text("가격: 50,000")
                
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}
