//
//  HeaderView.swift
//  InstaMogi
//
//  Created by Leo Mogiano on 1/9/24.
//

import SwiftUI

struct HeaderView: View {
    
    var messages: Int
    var notifications: Int
    
    
    var body: some View {
        HStack{
            Text("Instagram")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            HStack(spacing: 20) {
                ZStack {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)


                    Text("\(notifications)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(4)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x: 15, y: -12)
                }

                ZStack {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)

                    Text("\(messages)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .padding(4)
                        .background(Color.red)
                        .clipShape(Circle())
                        .offset(x: 10, y: -10)
                }
            }
        }.padding(.horizontal, 20)
            .foregroundStyle(.white)
    }
}

#Preview {
    HeaderView(messages: 5, notifications: 3)
}
