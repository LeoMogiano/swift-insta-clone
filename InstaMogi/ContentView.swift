//
//  ContentView.swift
//  InstaMogi
//
//  Created by Leo Mogiano on 1/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView(
                    messages: 3,
                    notifications: 1
                )
                StoriesView()
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.black)
        }
        .toolbar(.hidden)
        
    }
}

#Preview {
    ContentView()
}
