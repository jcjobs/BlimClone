//
//  TrailerList.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 02/07/21.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(trailers) { trailer in
                VideoPreviewImage(videoURL: trailer.videoURL, imageURL: trailer.thumbnailImageURL)
                    .frame(maxWidth: screen.width)
                
                Text(trailer.name)
            }
        }.foregroundColor(.white)
        .padding(.bottom, 10)
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            TrailerList(trailers: exampleTrailers)
        }
        
    }
}
