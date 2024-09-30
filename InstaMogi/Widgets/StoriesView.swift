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
            HStack(spacing:2){
                UserHistory(name: "leo_mogiano", isBestFriend: true)
                UserHistory(name: "puchoman_priv")
                UserHistory(name: "messi_10")
                UserHistory(name: "brunonoe")
                UserHistory(name: "claudia_mogiano")
            }
        }
    }
}

struct UserHistory: View {
    
    var name: String
    var isBestFriend: Bool = false
    
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill((isBestFriend) ? .green : .red)
                    .frame(width: 70)
                    .overlay{
                        Circle()
                            .stroke(Color.black, lineWidth: 4)
                            .padding(4)
                    }
                ZStack{
                    AsyncImage(url: URL(string: "https://scontent-gru2-2.cdninstagram.com/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?stp=dst-jpg_e0_s150x150&_nc_ht=scontent-gru2-2.cdninstagram.com&_nc_cat=111&_nc_ohc=BX_7oAQuRncQ7kNvgHiLnIW&_nc_gid=027e481cd862436b82e353b1b1ac526e&edm=APGXKFABAAAA&ccb=7-5&ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.3-ccb7-5&oh=00_AYCT6ia5ghWL5BnoOa25Mw4tDB0hmJJ709_sjeZdZxmOMQ&oe=66FFF84F&_nc_sid=a8b8e2")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                    } placeholder: {
                        ProgressView()  // Puedes mostrar un indicador de carga mientras se descarga la imagen
                    }
                    
                }
            }

            Text(name)
                .lineLimit(1)
                .font(.caption)
                .foregroundColor(.white)
            
            
        }
        .frame(width: 90)
        .padding(.vertical, 1)
    }
}


#Preview {
    StoriesView()
}
