//
//  StoriesView.swift
//  InstaMogi
//
//  Created by Leo Mogiano on 1/9/24.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 2){
                ForEach(0..<10) { _ in
                    VStack {
                        ZStack{
                            Circle()
                                .fill(.red)
                                .frame(width: 70)
                                .overlay{
                                    Circle()
                                        .stroke(Color.black, lineWidth: 4)
                                        .padding(4)
                                }
                            ZStack{
                                Circle()
                                    .fill(.yellow.opacity(0.4))
                                    .frame(height: 58)
                                Text("😺")
                            }
                        }
        
                        Text("Username")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 1)
                }
            }
        }
    }
}


#Preview {
    StoriesView()
}
