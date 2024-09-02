//
//  HeaderView.swift
//  InstaMogi
//
//  Created by Leo Mogiano on 1/9/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Text("Instagram")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            HStack(spacing: 20){
                Image(systemName: "heart")
                Image(systemName: "paperplane")
            }
        }.padding(.horizontal, 20)
            .foregroundStyle(.white)
    }
}

#Preview {
    HeaderView()
}
