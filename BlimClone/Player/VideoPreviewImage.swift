//
//  VidePreviewImage.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 02/07/21.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var videoURL: URL
    var imageURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            }).sheet(isPresented: $showingVideoPlayer, content: {
                CustomVideoPlayer(url: videoURL)
            })
            
        }
    }
}

struct VidePreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(videoURL: exampleVideoURL, imageURL: exampleImageURL)
    }
}
